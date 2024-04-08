warning off
clc
pkg load symbolic

syms x;
% a

f = ((x^3)-2*(x^2)-4*x+8)/((x^4)-8*(x^2)+16);
lim_value = limit(f, x, 2);
disp(['Limit (a): ', char(vpa(lim_value, 11))]);

% b

f = (((x^2)-x-2)^20)/((x^3)-12*x+16);
lim_value = limit(f, x, 2);
disp(['Limit (b): ', char(vpa(lim_value, 11))]);

% c

f = (sqrt(1+tan(x))-sqrt(1+sin(x)))/(x^3);
lim_value = limit(f, x, 0);
disp(['Limit (c): ', char(vpa(lim_value, 11))]);

% d

f = (tan(x))^(tan(2*x));
lim_value = limit(f, x, (pi/4));
disp(['Limit (d): ', char(vpa(lim_value, 11))]);
