function bin_i = task2func(n)
  if n == 0
    bin_i = '0';
  else
    bin_i = '';
    while n > 0
      remainder = mod(n, 2);
      bin_i = [char('0' + remainder), bin_i];
      n = fix(n / 2);
    end
  end
end

