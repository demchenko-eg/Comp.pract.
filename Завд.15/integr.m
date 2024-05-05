function result = integr(func, a, b, n)
  dx = (b - a) / n;
  su = 0;
  for i = 1:n
    x_left = a + (i - 1) * dx;
    x_right = a + i * dx;
    su += func((x_left + x_right) / 2) * dx;
  end
  result = su;
end

