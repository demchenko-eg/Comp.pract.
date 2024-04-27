warning off
clc
pkg load symbolic


syms x;
f1 = x.^(1/3);
fd1 = diff(f1);
fn1 = subs(f1, x, 8) + subs(fd1, x, 8)* 0.04;
disp(double(fn1));


f2 = atan(x);
fd2 = diff(f2);
fn2 = subs(f2, x, 1) + subs(fd2, x, 1)* 0.05;
disp(double(fn2));
