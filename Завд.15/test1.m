warning off
clc


fa = @(x) 1 ./ (1 + x.^2);
fb = @(x) abs(x);
a1 = 0;
a2 = -1;
b = 1;
n = 10000;

disp(["Calculated value (a): ", num2str(integr(fa, a1, b, n))]);
disp(["Exact value (a): ", num2str(integral(fa, a1, b)), "\n"]);
disp(["Calculated value (b): ", num2str(integr(fb, a2, b, n))]);
disp(["Exact value (b): ", num2str(integral(fb, a2, b)), "\n"]);
