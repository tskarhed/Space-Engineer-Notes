function drawTrajectory( angle, velocity, startPoint )
%Draws the trajectory of a particle which starts att [x y] = startPoint
%with an angle and a velocity.
%   Detailed explanation goes here

%Gravity
g = 9.82;

%When the particle hits the ground
trajectoryEnd = (velocity * sin(angle) + sqrt((velocity*sin(angle))^2-2*g*startPoint(2)))/g;

points = linspace(0, trajectoryEnd);

y = @(t) startPoint(2) + velocity*sin(angle)*t - (g*t.^2)/2;
x = @(t) startPoint(1) + velocity*cos(angle)*t;

plot(x(points), y(points));



end

