warning off
clc



x1 = -10:0.1:0;
x2 = 0.1:0.1:1;
x3 = 1.1:0.1:10;


y1 = 0;
y2 = x2.^2;
y3 = x3.^4;


figure;
plot(x1, y1, 'r', 'LineWidth', 2);
hold on;
plot(x2, y2, 'g', 'LineWidth', 2);
plot(x3, y3, 'b', 'LineWidth', 2);
hold off;

grid on;
xlabel('x');
ylabel('y');
legend('0', 'x^2', 'x^4');

