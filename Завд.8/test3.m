warning off
clc


z1 = 1.9 * 0.4i;
z2 = -1.9 * 0.5i;
n = 100;

points_z1 = task3func(z1, n);
points_z2 = task3func(z2, n);


figure;
subplot(1, 2, 1);
plot(real(points_z1), imag(points_z1), '.');
title('z_1^n');
xlabel('Real');
ylabel('Imaginary');
axis equal;

subplot(1, 2, 2);
plot(real(points_z2), imag(points_z2), '.');
title('z_2^n');
xlabel('Real');
ylabel('Imaginary');
axis equal;

