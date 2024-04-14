warning off
clc
pkg load symbolic


syms x;

eqn = 1/x == sqrt(x);
xi = solve(eqn, x);
xi = double(xi);
##yi = 1 ./ xi;
a1 = -1 ./ xi;
a2 = 1 ./ (2 * sqrt(xi));
theta = acosd(dot([1,a1],[1,a2]) / (norm([1,a1]) * norm([1,a2])));

disp(['Angle: ', num2str(theta)]);

