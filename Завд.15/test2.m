warning off
clc


f1 = @(x) sqrt(1 - x.^2);
f2 = @(x) x.^2 - 1;
a = -1;
b = 1;
n = 1000;

area = abs(integr(f1, a, b, n) - integr(f2, a, b, n));
disp(area);


##a = abs(integral(f1, a, b) - integral(f2, a, b));
##disp(a);


