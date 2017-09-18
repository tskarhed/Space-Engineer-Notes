function d = derivative(f,x)
%Derivative
%f is function
%x the in which we will calculate the derivative

%for very small values
h=1E-10;

d=(f(x+h)-f(x))/h;