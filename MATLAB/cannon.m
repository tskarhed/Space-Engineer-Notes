function [ maxHeight, distance ] = cannon( v0, alpha )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
g=9.82;

%1+ for barrell
y = @(time)1+v0*sind(alpha)*time-(9.82*time.^2)/2;
x = @(time)1+v0*cosd(alpha)*time;

distanceT = (2*v0*sind(alpha))/g;

%Just curious to see how far it travelled
t = linspace(0, distanceT);
maxHeight = max(y(t));
distance = x(distanceT);
end

