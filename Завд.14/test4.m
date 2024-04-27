warning off
clc


f1 = @(x) 3 * x - x.^3;
g1 = @(x) -f1(x);
disp(["Local minimum (a) at x = ", num2str(fminbnd(f1, -5, 5))]);
disp(["Local maximum (a) at x = ", num2str(fminbnd(g1, -5, 5))]);


f1 = @(x) (1 / (2 ^ x)) * x.^ 2;
g1 = @(x) -f1(x);
disp(["Local minimum (b) at x = ", num2str(fminbnd(f1, -2, 6))]);
disp(["Local maximum (b) at x = ", num2str(fminbnd(g1, -2, 6))]);

