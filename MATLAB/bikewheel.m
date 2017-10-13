function bikewheel(radius, v, angle)
%Takes the radius of a circle (bikewheel) which rotates at a velocity v and
%calculates the trajectory for particles at angle

%Make a single variable so we don't have to retype
center = [radius radius];

%Draw the circle
drawCircle(radius, center);
hold on;

%points = randi(100, 1, 20);
%points = linspace(0, 2*pi);

%Rename variable becase of previous tests
points = angle;

index = 1;
%Rows 1:angles 2:slopes 3:length 4:height
%Good for debug etc.
attributes = zeros(4, numel(points));

%Make calculations for evey point
for alpha = points

    %Generate point which are displaced 0.1radians from the initial point
    %and calculate the slope between these two. That is the derivative in
    %our point.
    [ point1x, point1y ] = getCirclePoint(radius, alpha-0.1, center);
    [ point2x, point2y ] = getCirclePoint(radius, alpha+0.1, center);
    slope = (point2y-point1y)/(point2x-point1x);

    %Save slope to matrix
    attributes(2, index) = slope;

    %Redistribute alpha to get in the interval [0, 2*pi]
    redAlpha = wrapTo2Pi(alpha);
        
    %-pi for angles gives us a positive angle in the opposite direction. It
    %works ;)
    if (pi < redAlpha) && (redAlpha < 2*pi)
       attributes(1, index) = atan(slope)-pi;
    else
       attributes(1, index) = atan(slope);
    end

    %Draw the trajectory
    [startX, startY] = getCirclePoint(radius, alpha, center);
    %Set values for length and height in the matrix
    [attributes(3, index), attributes(4, index)] = drawTrajectory(attributes(1, index), v, [startX startY]);
    %Set index
    index = index +1;
end

%Titles and labels
axis equal
title('Cykelstänk', 'fontsize', 20);
xlabel('Längd [m]', 'fontsize', 18);
ylabel('Höjd [m]', 'fontsize', 18);

%Get the longest trajectory
maxLength = max(attributes(3, :));
%Get the shortest trajectory
minLength = min(attributes(3, :));

%Draw ground and grass
plot([minLength maxLength], [0 0], 'LineWidth', 6, 'Color', 'g');
fill([minLength minLength maxLength maxLength], [0 -1 -1 0], [0.7 0.7 0.7], 'EdgeColor', 'none');
axis([-Inf Inf -1 Inf]);
hold off;

%Tell the command window that we are done!
disp('Done!');

end


function [ x, y ] = getCirclePoint( radius, angle, center )
%Returns a point at a give angle with a given radius
% Form center as coordinate vector center = [x y]
%   Detailed explanation goes here

%y displacement of r
y = center(2)+sin(angle)*radius;
x = center(1)+cos(angle)*radius;

end


function drawCircle( radius, center )
%Draws a circle

angles = linspace(0, 2*pi);

[x, y] = getCirclePoint(radius, angles, center);

plot(x, y);
axis equal;

end

function [length, height] = drawTrajectory( angle, velocity, startPoint )
%Draws the trajectory of a particle which starts att [x y] = startPoint
%with an angle and a velocity.
%   Detailed explanation goes here

%Gravity
g = 9.82;

%When the particle hits the ground

y = @(t) startPoint(2) + velocity*sin(angle)*t - (g*t.^2)/2;

%Find trajectory end
%Loop over y(t) and try values until they are equal to 0 (hit the ground).
%This solution is not good for big values of velocity, but realistically it
%would probably not exceed 20m/s
t=0;
y0 = y(t);
while y0 >= 0
    y0 = y(t);
    %Increase time with a very small step to have a good resolution of the
   %answer
    t = t+0.00001;
end

%%%THIS STUFF WORKS, BUT IT IS SLOW%%%
%syms altT; %Creates a "placeholder" variable
%equation = startPoint(2) + velocity*sin(angle)*altT-(g*altT^2)/2;%Equation where it hits the ground
%times = double(solve(equation, altT));%Solve the equation and give it a numerical value
%t = max(times); %Select the positive value

%Return the length/height of the parabola (in meters)
length = startPoint(1) + velocity*cos(angle)*t;
height = startPoint(2) + velocity*sin(angle)*t-(g*t^2)/2;

points = linspace(0, t);

x = @(t) startPoint(1) + velocity*cos(angle)*t;

plot(x(points), y(points));

end


