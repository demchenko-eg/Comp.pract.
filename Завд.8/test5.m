warning off
clc


x = linspace(-5, 5, 400);

y1 = sqrt(x.^2 - 4);
y2 = -sqrt(x.^2 - 4);
y = sqrt(16 - (abs(x) - 1).^2);

figure;
subplot(1, 2, 1);
plot(x, y1, 'b', x, y2, 'b', x, -y1, 'b', x, -y2, 'b');
title('Re(z^2) = 4');
xlabel('Re');
ylabel('Im');
axis equal;
grid on;
subplot(1, 2, 2);
plot(x, y, 'b', x, -y, 'b');
title('|z - 1| + |z + 1| = 4');
xlabel('Re');
ylabel('Im');
axis equal;
grid on;
