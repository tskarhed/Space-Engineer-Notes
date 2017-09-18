function M = kast(v0, alpha)
%Gravity
g=9.82;
y = @(time)v0*sind(alpha)*time-(9.82*time.^2)/2
x = @(time)v0*cosd(alpha)*time

distanceT = (2*v0*sind(alpha))/g

%Just curious to see how far it travelled
M = x(distanceT);
t = linspace(0, distanceT);

plot(x(t), y(t))
axis tight
axis equal
title('Throw that ball!');
xlabel('Distance');
ylabel('Height');