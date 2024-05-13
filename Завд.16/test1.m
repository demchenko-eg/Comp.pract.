warning off
clc


s1 = [1, 2, -1];
s2 = [2, 0, 1];
v1 = [1, 0, -3];
v2 = [1, 2, 3];

[x, y] = meshgrid(-10:0.5:10, -10:0.5:10);
normal_vector = cross(s1, s2);

z1 = s1(3) * x + s2(3) * y;
z2 = v1(3) * x + v2(3) * y;
z3 = -(normal_vector(1) * x + normal_vector(2) * y) / normal_vector(3);

xt = linspace(-10, 10, 100);
yt = xt;
zt = zeros(size(xt));

surf(x, y, z1, 'FaceColor', 'r', 'EdgeColor', 'none');
hold on;
surf(x, y, z2, 'FaceColor', 'b', 'EdgeColor', 'none');
plot3(xt, yt, zt, 'k', 'LineWidth', 2);
surf(x, y, z3, 'FaceColor', 'g');

xlabel('X');
ylabel('Y');
zlabel('Z');
legend('S', 'V', 'Cross', 'S+V');
title('Subspaces');

hold off;
