function result = task5_2func(a, e, n)
  result = 1;
  bin_e = task2func(e);
  for i = 1:length(bin_e)
    result = mod(result * result, n);
    if bin_e(i) == '1'
      result = mod(result * a, n);
    end
  end
end
