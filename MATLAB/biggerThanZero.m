function y = biggerThanZero( x )
%Checks if x is bigger than zero. x=0 returns 0.5
%   Detailed explanation goes here
    y = (x>0);
    y(find(x==0)) = 0.5; 
end

