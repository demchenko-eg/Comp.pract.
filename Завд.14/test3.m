warning off
clc
pkg load symbolic


syms x;
f1 = sin(x).^2;
for i = 1:25
  f1 = diff(f1);
end
fn1 = subs(f1, x, pi/4);
disp(fn1);


f2 = 5 * log(5 * x);
for i = 1:25
  f2 = diff(f2);
end
fn2 = subs(f2, x, 1);
disp(fn2);


f3 = 1 / (2 ^ (3 * x));
for i = 1:25
  f3 = diff(f3);
end
fn3 = subs(f3, x, 0);
disp(fn3);
