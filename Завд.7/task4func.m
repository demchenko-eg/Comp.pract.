function result = task4func(n, m)
  result = 1;
  for i = 2:n
    result = mod(result * i, m);
  end
end
