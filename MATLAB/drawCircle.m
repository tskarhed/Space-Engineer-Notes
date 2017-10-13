function drawCircle( radius, center )
%Draws a circle

angle = linspace(0, 2*pi);

[x y] = getCirclePoint(radius, angle, center);

plot(x, y);
axis equal;
%x = points();

end

