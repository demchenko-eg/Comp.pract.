warning off
clc

f = @(x) exp(x.^2);
a = 0;
b = 1;
n = 8;
r = integr(f, a, b, n);
disp(["Calculated value: ", num2str(r)]);

x = 0:0.125:1;
y = exp(x.^2);
ex = trapz(x, y);
disp(["Exact value: ", num2str(ex)]);

err = abs(ex - r);
disp(["Error: ", num2str(err)]);
