warning off
clc


f = @(x) (x - 3).^3 * e^abs(x);
g = @(x) -f(x);
o = optimset('TolX', 1e-6);
disp(["Minimum = ", num2str(f(fminbnd(f, -1, 4, o)))]);
disp(["Maximum = ", num2str(f(fminbnd(g, -1, 4, o)))]);
