function result = task8func(n)
  sum = 0;
  bin_n = task2func(n);
  bin_n = num2str(bin_n);
  for i = 1:length(bin_n)
    sum += bin_n(i);
  end
  if mod(sum, 2) == 1
    result = [bin_n '1'];
  else
    result = [bin_n '0'];
  end
end
