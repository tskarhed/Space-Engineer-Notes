function drawTrajectory( angle, velocity, startPoint )
%Draws the trajectory of a particle which starts att [x y] = startPoint
%with an angle and a velocity.
%   Detailed explanation goes here

%Gravity
g = 9.82;

%When the particle hits the ground

y = @(t) startPoint(2) + velocity*sin(angle)*t - (g*t.^2)/2;

%Find trajectory end
%Loop over y(t) and try values until they are equal to 0 (hit the ground)
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

points = linspace(0, t);

x = @(t) startPoint(1) + velocity*cos(angle)*t;

plot(x(points), y(points));



end

