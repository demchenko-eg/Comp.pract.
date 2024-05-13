warning off
clc
pkg load symbolic



syms x1a;
syms x2a;
syms x3a;

[x, y] = solve(x1a+3*x2a-2*x3a==0, 2*x1a+x2a-x3a==0, 5*x1a+5*x2a-4*x3a==0, {x1a,x2a,x3a})

x3pa = -10:0.1:10;
f1a = @(x3pa) x3pa/5;
f2a = @(x3pa) (3*x3pa)/5;


figure;
plot(x3pa, f1a(x3pa), 'b', 'LineWidth', 2);
hold on;
plot(x3pa, f2a(x3pa), 'r', 'LineWidth', 2);
grid on;
xlabel('x3');
ylabel('x1, x2');
title('Значення х1 та х2 в залежності від значення х3');
legend('x1', 'x2');
hold off;
