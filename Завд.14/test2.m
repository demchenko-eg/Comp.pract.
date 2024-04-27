warning off
clc
pkg load symbolic


syms t;
x = (1 - sqrt(t))^(1/3);
y = sqrt(1 - (t^(1/3)));

dx_dt = diff(x, t);
dy_dt = diff(y, t);
dy_dx = simplify(dy_dt / dx_dt);
d2y_dx2 = simplify(diff(dy_dx, t) / dx_dt);
f = subs(d2y_dx2, t, 0.5);
g = double(f);
disp(g);
