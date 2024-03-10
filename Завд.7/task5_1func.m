function result = task5_1func(a, e, n)
  result = 1;
  for i = 1:e
    result = mod(result * a, n);
  end
end
