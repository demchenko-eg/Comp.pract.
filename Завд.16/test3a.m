warning off
clc


A = [1 -1; -1 1];
kernel = null(A);
image = A * rand(2,100);

figure;
subplot(1, 2, 1);
plot(kernel(1,:), kernel(2,:), 'o');
title('Ядро лінійного відображення');
xlabel('x');
ylabel('y');
grid on;

subplot(1, 2, 2);
plot(image(1,:), image(2,:), 'o');
title('Образ лінійного відображення');
xlabel('x');
ylabel('y');
grid on;
