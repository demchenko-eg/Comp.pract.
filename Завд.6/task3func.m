function task3func(A1, B1, C1, A2, B2, C2)
  m1 = -A1/B1;
  m2 = -A2/B2;
  b1 = -C1/B1;
  b2 = -C2/B2;
  x1 = linspace(-10, 10, 100);
  x2 = linspace(-10, 10, 100);
  y1 = m1*x1+b1;
  y2 = m2*x2+b2;
  plot(x1, y1, 'r');
  hold on;
  plot(x2, y2, 'g');
  hold off;
  grid on;
  xlabel('x');
  ylabel('y');
  title('Пряма на площині');
  legend('Ghzvf 1', 'Ghzvf 2');

  if A1/B1 == A2/B2
    if C1 == C2
      fprintf('This is the only straight line\n');
      disp('The angle between these lines = 0');
    else
      fprintf('Lines are parallel\n');
      disp('The angle between these lines = 0');
    end
  else
    A = [A1 B1; A2 B2];
    C = [-C1; -C2];
    point = A\C;
    teta = atan(abs((m2-m1)/(1+m1*m2)));
    fprintf('Intersection point: (%.2f, %.2f)\n', point(1), point(2));
    disp('The angle between these lines: ');
    disp(rad2deg(teta))
    return
  end
end

