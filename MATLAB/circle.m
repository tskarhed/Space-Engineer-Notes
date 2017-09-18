function [ x, y ] = circle( center, radius, angle )
%center = [x y]
%Creates a circle and returns the value of a coordinate at a given angle
%   Detailed explanation goes here

circleX = @(alpha)radius*cosd(alpha)+ center(1);
circleY = @(alpha)radius*sind(alpha)+ center(2);

figure(1);
%Generate points for 0 to 360 degrees
graph = linspace(0, 360, 400);
plot(circleX(graph), circleY(graph));
axis equal
axis tight
grid on

x =circleX(angle);
y =circleY(angle);
end

