warning off
clc
pkg load symbolic


x = [-2, -1, 1, 2];
y = [1, 10, 13, 33];

p = polyfit(x, y, 3);

f = poly2sym(p);
disp('Polynomial f(x):');
disp(f);
