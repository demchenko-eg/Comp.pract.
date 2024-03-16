function roots = task4func(n)
  roots = zeros(1, n);
  for k = 0:n-1
    roots(k+1) = exp(2i*pi*k/n);
  end
end
