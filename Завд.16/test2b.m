warning off
clc
pkg load symbolic



syms x1b;
syms x2b;
syms x3b;

[x, y] = solve(x1b+3*x2b-2*x3b==2, 2*x1b+x2b-x3b==2, 5*x1b+5*x2b-4*x3b==6, {x1b,x2b,x3b})

x3pb = -10:0.1:10;
f1b = @(x3pb) (x3pb/5) + (4/5);
f2b = @(x3pb) ((3*x3pb)/5) + (2/5);


figure;
plot(x3pb, f1b(x3pb), 'b', 'LineWidth', 2);
hold on;
plot(x3pb, f2b(x3pb), 'r', 'LineWidth', 2);
grid on;
xlabel('x3');
ylabel('x1, x2');
title('Значення х1 та х2 в залежності від значення х3');
legend('x1', 'x2');
hold off;
