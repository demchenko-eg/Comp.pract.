warning off
clc

function visualize(v1, v2, v3, vect1, vect2)
  result = [v1(2)*v2(3)-v1(3)*v2(2), v1(3)*v2(1)-v1(1)*v2(3), v1(1)*v2(2)-v1(2)*v2(1)];
  figure;
  plot3([v1(1), v2(1)], [v1(2), v2(2)], [v1(3), v2(3)], 'm', 'LineWidth', 2);
  hold on;
  plot3([v2(1), v3(1)], [v2(2), v3(2)], [v2(3), v3(3)], 'm', 'LineWidth', 2);
  plot3([v3(1), v1(1)], [v3(2), v1(2)], [v3(3), v1(3)], 'm', 'LineWidth', 2);
  quiver3(0, 0, 0, v1(1), v1(2), v1(3), 'b', 'LineWidth', 2, 'MaxHeadSize', 0.1);
  quiver3(0, 0, 0, v2(1), v2(2), v2(3), 'g', 'LineWidth', 2, 'MaxHeadSize', 0.1);
  quiver3(0, 0, 0, result(1), result(2), result(3), 'r', 'LineWidth', 2, 'MaxHeadSize', 0.05);
  axis equal;
  grid on;
  xlabel('X');
  ylabel('Y');
  zlabel('Z');
  title('Векторний добуток та вхідні вектори; візуалізація трикутника');
  hold off;
end

##v1 = input('Enter the coordinates of 1 vertex in the format [x, y, z]: ');
##v2 = input('Enter the coordinates of 2 vertex in the format [x, y, z]: ');
##v3 = input('Enter the coordinates of 3 vertex in the format [x, y, z]: ');

##vect1 = input('Enter the coordinates of 1 vector in the format [x, y, z]: ');
##vect2 = input('Enter the coordinates of 2 vector in the format [x, y, z]: ');

v1 = [1, 6, -4];
v2 = [4, 5, 0];
v3 = [17, 3, 2];

vect1 = [1, 7, 3];
vect2 = [0, 17, 2];

r1 = task1func(v1, v2, v3, vect1, vect2);
disp(r1);
visualize(v1, v2, v3, vect1, vect2);
