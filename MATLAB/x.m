function distance = x( t )
%t=time

%Initial velocity
v0 = 35;
%Direction of throw
theta = 50;
%Gravity
g= 9.82;

distanceX = ((v0^2)*sind(2*theta))/g;

t = linspace(0, distanceX);
y=@(time) v0 * sind(theta)*time-(g*time.^2)/2;

plot(t, y(t));
end

