warning off
clc


A = [1 1 1; 2 -2 3; 3 -1 4];
kernel = null(A);
image = A * rand(3,100);

figure;

subplot(1, 2, 1);
plot3(kernel(1,:), kernel(2,:), kernel(3,:), 'bo');
title('Ядро лінійного відображення');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

subplot(1, 2, 2);
plot3(image(1,:), image(2,:), image(3,:), 'ro');
title('Образ лінійного відображення');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;
