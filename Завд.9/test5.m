warning off
clc


t = -10:0.1:10;

x = (3*t) ./ (1 + t.^3);
y = (3*t.^2) ./ (1 + t.^3);

plot(x, y);
xlabel('x');
ylabel('y');
title('Декартів лист');
grid on;
