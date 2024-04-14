warning off
clc
pkg load symbolic

syms x;

% 1)
f11 = (1 + x) ^ (1/x) - e;
f12 = x;
lim1 = limit((diff(f11)/diff(f12)), x, 0);
disp(lim1);

disp('');

% 2)
f21 = x - 1 - log(x);
f22 = (x - 1) * log(x);
lim2 = limit((diff(f21)/diff(f22)), x, 1);
disp(lim2);
