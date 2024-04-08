warning off
clc
pkg load symbolic



syms x;
% a

f = sin(x)/abs(x);
lim_value_right = limit(f, x, 0, 'right');
disp(['Right limit (a): ', char(vpa(lim_value_right, 11))]);
lim_value_left = limit(f, x, 0, 'left');
disp(['Left limit (a): ', char(vpa(lim_value_left, 11))]);

% b

f1 = x;
f2 = -2*x;
lim_value_right = limit(f1, x, 1, 'right');
disp(['Right limit (b): ', char(vpa(lim_value_right, 11))]);
lim_value_left = limit(f2, x, 1, 'left');
disp(['Left limit (b): ', char(vpa(lim_value_left, 11))]);

