warning off
clc



x1 = -10:0.1:-1;
x2 = -1:0.1:1;
x3 = 1:0.1:10;

y1 = -x1.^2+1;
y2 = 0;
y3 = x3.^2-1;

plot(x1, y1, 'r', 'LineWidth', 2);
hold on;
plot(x2, y2, 'g', 'LineWidth', 2);
plot(x3, y3, 'b', 'LineWidth', 2);
hold off;

grid on;
xlabel('x');
ylabel('y');
legend('x^2 + 1', '0, |x|', 'x^2 - 1');

