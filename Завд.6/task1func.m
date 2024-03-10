function task1func(a)
  fi = linspace(0, 2*pi, 1000);
  ro = sqrt(2*a^2*cos(2*fi));
  x = ro .* cos(fi);
  y = ro .* sin(fi);
  figure;
  plot(x, y, 'LineWidth', 2);
  title('Лемніската Бернуллі');
  xlabel('X');
  ylabel('Y');
  axis equal;
  grid on;
end
