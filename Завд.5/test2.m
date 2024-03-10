warning off
clc

function visualize(p1, p2, p3, p4, vect1, vect2, vect3)
  figure;
  quiver3(0, 0, 0, vect1(1), vect1(2), vect1(3), 'b', 'LineWidth', 2, 'MaxHeadSize', 0.1);
  hold on;
  quiver3(0, 0, 0, vect2(1), vect2(2), vect2(3), 'g', 'LineWidth', 2, 'MaxHeadSize', 0.1);
  quiver3(0, 0, 0, vect3(1), vect3(2), vect3(3), 'r', 'LineWidth', 2, 'MaxHeadSize', 0.1);
  scatter3(p1(1), p1(2), p1(3), 'r', 'filled');
  scatter3(p2(1), p2(2), p2(3), 'r', 'filled');
  scatter3(p3(1), p3(2), p3(3), 'r', 'filled');
  scatter3(p4(1), p4(2), p4(3), 'r', 'filled');
  axis equal;
  grid on;
  xlabel('X');
  ylabel('Y');
  zlabel('Z');
  title('Вхідні вектори та точки');
  hold off;
end

vect1 = [4, 7, 6];
vect2 = [2, 0, -5];
vect3 = [0, 15, -7];

p1 = [8, 5, 13];
p2 = [9, 0, 1];
p3 = [0, -7, 15];
p4 = [7, -9, 2];

##p1 = input('Enter the coordinates of 1 point in the format [x, y, z]: ');
##p2 = input('Enter the coordinates of 2 point in the format [x, y, z]: ');
##p3 = input('Enter the coordinates of 3 point in the format [x, y, z]: ');
##p4 = input('Enter the coordinates of 4 point in the format [x, y, z]: ');
##vect1 = input('Enter the coordinates of 1 vector in the format [x, y, z]: ');
##vect2 = input('Enter the coordinates of 2 vector in the format [x, y, z]: ');
##vect3 = input('Enter the coordinates of 3 vector in the format [x, y, z]: ');

r1 = task2func(p1, p2, p3, p4, vect1, vect2, vect3);
disp(r1)
visualize(p1, p2, p3, p4, vect1, vect2, vect3);
