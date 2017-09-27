function [ x, y ] = getCirclePoint( radius, angle, center )
%Returns a point at a give angle with a given radius
% Form center as coordinate vector center = [x y]
%   Detailed explanation goes here

%y displacement of r
y = center(2)+sin(angle)*radius;
x = center(1)+cos(angle)*radius;

end

