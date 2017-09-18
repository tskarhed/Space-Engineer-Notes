function [mi ma] = plotD(f,a,b)

x= linspace(a,b, 300);
d = derivative(f,x);
plot(x, f(x), x, d);
legend('f(x)', 'D(x)');
mi = min(d);
ma = max(d);
xlabel('x');