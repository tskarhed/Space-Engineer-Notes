function bikewheel(radius, v, angle)
%Takes the radius and simulation and stuff... Look ot the goddamn
%assignment
%   Detailed explanation goes here gvolllll00

center = [radius radius];

drawCircle(radius, center);
hold on;

points = linspace(0, 2*pi);

[x, y] = getCirclePoint(radius, points, center);

index = 1;
angles = zeros(1, numel(points));
for alpha = points

  
    %Generate point which are displaced 0.1radians from the initial point
    %and calculate the slope between these two. That is the derivative in
    %our point.
    [ point1x, point1y ] = getCirclePoint(radius, alpha-0.1, center);
    [ point2x, point2y ] = getCirclePoint(radius, alpha+0.1, center);
    slope = (point2y-point1y)/(point2x-point1x);
    angles(index) = atan(slope);
    disp(angles(index));
    
    %Draw the trajectory
    [startX, startY] = getCirclePoint(radius, alpha, center);
    drawTrajectory(atan(slope), v, [startX startY]);
    %Set index
    index = index +1;
end

gcf;
plot(x, y, 'yp', 'MarkerSize', 25, 'MarkerFaceColor', [1 204/255 0]);

set(gca, 'color', [0 51/255 153/255]);

%axis([-3*radius 3*radius -radius 3*radius ]);
axis equal
hold off;

end

