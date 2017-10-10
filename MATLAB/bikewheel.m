function bikewheel(radius, v, angle)
%Takes the radius and simulation and stuff... Look ot the goddamn
%assignment
%Detailed explanation goes here

center = [0 0];

%drawCircle(radius, center);
hold on;

%points = randi(100, 1, 20);
points = linspace(0, 2*pi, 12);
%points
[x, y] = getCirclePoint(radius, points, center);




%figure(2);
%plot(linspace(0,100, numel(slopes)), angles);

gcf;
plot(x, y, 'yp', 'MarkerSize', 25, 'MarkerFaceColor', [1 204/255 0]);

set(gca, 'color', [0 51/255 153/255]);

axis([-3*radius 3*radius -radius 3*radius ]);
axis equal
%title('Cykelstänk', 'fontsize', 20);
%xlabel('Längd [m]', 'fontsize', 18);
%ylabel('Höjd [m]', 'fontsize', 18);
hold off;

disp('Done!');

end

