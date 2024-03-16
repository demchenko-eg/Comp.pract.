function points = task3func(z, n)
  points = zeros(1, n);
  for i = 1:n
    points(i) = z^i;
  end
end

