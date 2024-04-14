warning off
clc
pkg load symbolic


syms x;

# a)
x0 = 0;
f = @(x)asin(x)/sqrt(1-(x^2))+(1/2)*log((1-x)/(1+x));
y = (f(x)+f(x0))/(x-x0);
lim = limit(f, x, x0);
fprintf('Derivative (a) at point x0 = 0 %.3f\n', double(lim));

# b)
x0 = 1;
f = @(x)sqrt(x+sqrt(x+sqrt(x)));
lim = limit(f, x, x0);
fprintf('Derivative (b) at point x0 = 1 %.3f\n', double(lim));
