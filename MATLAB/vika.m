function n = vika()
%Fold a paper into space.

%Times to fold
n=0;
%Initial Thickness
d= 0.0001;
%Initial Area
A= 0.5;

%10km to space
while d<100000
    n=n+1;
    d=d*2;
    A=A/2;
end
A