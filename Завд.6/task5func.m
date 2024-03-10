function task5func(A1, B1, C1, D1, A2, B2, C2, D2)
  [x1, y1] = meshgrid(-10:0.5:10, -10:0.5:10);
  z1 = (-A1 * x1 - B1 * y1 - D1) / C1;
  [x2, y2] = meshgrid(-10:0.5:10, -10:0.5:10);
  z2 = (-A2 * x2 - B2 * y2 - D2) / C2;
  figure;
  mesh(x1, y1, z1, 'FaceAlpha', 0.5, 'FaceColor', 'red');
  hold on;
  mesh(x2, y2, z2, 'FaceAlpha', 0.5, 'FaceColor', 'green');
  hold off;
  title('Visualizing a Plane');
  xlabel('X');
  ylabel('Y');
  zlabel('Z');
  legend('Plane 1', 'Plane 2')
end
