function r_nums = task9func(x0, a, c, m, n)
  r = x0;
  r_nums = zeros(1, n);
  for i = 1:n
    r = mod(a * r + c, m);
    r_nums(i) = r / m;
  end
end
