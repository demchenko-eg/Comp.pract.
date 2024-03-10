function result = task7func(n)
  m = 0;
  n = num2str(n);
  for i = 1:10
    m = m + str2double(n(i)) * (11 - i);
  end
  if mod(m, 11) == 0
    result = 'True';
  else
    result = 'False';
  end
end
