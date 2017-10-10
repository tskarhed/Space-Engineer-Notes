function bikewheel(radius, v, angle)
%Takes the radius and simulation and stuff... Look ot the goddamn
%assignment
%Detailed explanation goes here

writer = VideoWriter('flag.avi');

open(writer);
center = [0 0];

%drawCircle(radius, center);


for i=linspace(0,2*pi, 100)

gcf;
points = linspace(i-2*pi, i, 12);
[x, y] = getCirclePoint(radius, points, center);

plot(x, y, 'yp', 'MarkerSize', 25, 'MarkerFaceColor', [1 204/255 0]);

set(gca, 'color', [0 51/255 153/255]);

axis([-3*radius 3*radius -radius 3*radius ]);
axis equal



writeVideo(writer, getframe);
  pause(0.001);
end
%points = randi(100, 1, 20);
%points = linspace(0, 2*pi, 12);
%points


%figure(2);
%plot(linspace(0,100, numel(slopes)), angles);

%title('Cykelstänk', 'fontsize', 20);
%xlabel('Längd [m]', 'fontsize', 18);
%ylabel('Höjd [m]', 'fontsize', 18);
close(writer);
disp('Done!');

end

