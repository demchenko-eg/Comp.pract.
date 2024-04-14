warning off
clc
pkg load symbolic

syms x;

f = @(x) x.^x;
x0 = 2;
y0 = f(x0);
fd = diff(x^x);
fs = double(subs(fd, x, x0));

disp(['Derivative at point x0: ', num2str(fs)]);
xr = linspace(1, 3, 100);
yr = f(xr);
t = fs * (xr - x0) + y0;

figure;
plot(xr, yr, 'b');
hold on;
plot(xr, t, 'r');
plot(x0, y0);
xlabel('x');
ylabel('y');
legend('Функція y = x^x', 'Дотична');
grid on;

