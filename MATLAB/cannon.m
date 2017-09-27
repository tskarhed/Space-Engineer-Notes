function [ maxHeight, distance ] = cannon( v0, alpha )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
g=9.82;

displace = 1;

%1+ for barrell
y = @(time)displace+v0*sind(alpha)*time-(9.82*time.^2)/2;
x = @(time)v0*cosd(alpha)*time;

distanceT = (2*v0*sind(alpha)+(2*displace)/3)/g;

%Just curious to see how far it travelled
t = linspace(0, distanceT);
plot(x(t), y(t));
maxHeight = max(y(t));
distance = x(distanceT);
end

