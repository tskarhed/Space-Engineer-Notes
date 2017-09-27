function bikewheel(radius, v, angle)
%Takes the radius and simulation and stuff... Look ot the goddamn
%assignment
%   Detailed explanation goes here

%drawCircle(radius, [0 radius]);
hold on;

points = linspace(0, 2*pi, 12);

[x y] = getCirclePoint(radius, points, [0 radius]);
plot(x, y, 'yp', 'MarkerSize', 25, 'MarkerFaceColor', [1 204/255 0]);

set(gca, 'color', [0 51/255 153/255]);

axis([-3*radius 3*radius -radius 3*radius ]);
axis equal
hold off;

end

