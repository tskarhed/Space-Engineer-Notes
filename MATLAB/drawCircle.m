function drawCircle( radius, center )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

angle = linspace(0, 2*pi);

[x y] = getCirclePoint(radius, angle, center);

plot(x, y);
axis equal;
%x = points();

end

