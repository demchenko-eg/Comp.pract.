warning off
clc



x1 = linspace(0, 0.1, 1);
x2 = linspace(1, 0.1, 2);

y1 = x1.^4 + 3*x1.^2 + 2.^x1;
y2 = x2.^3 + abs(x2) + log(x2);


figure;
plot(x1, y1, 'r', 'LineWidth', 2);
hold on;
plot(x2, y2, 'b', 'LineWidth', 2);
hold off;

grid on;
xlabel('x');
ylabel('y');
legend('x^4 + 3*x^2 + 2^x', 'x^3 + |x| + ln(x)');
