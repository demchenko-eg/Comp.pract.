warning off
clc


x = -10:0.1:10;
y = abs(abs(x)-1)-1;
figure;
plot(x, y, 'r', 'LineWidth', 2);
grid on;
xlabel('x');
ylabel('y');
legend('||x|-1|-1');
