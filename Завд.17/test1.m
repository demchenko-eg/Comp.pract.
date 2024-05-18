warning off
clc
pkg load symbolic



f = @(n) 1 ./ ((3 .* n - 2) .* (3 .* n + 1));
series_sum = sum(f([1:50]))

syms n;

sn = symsum(1 ./ ((3 .* n - 2) .* (3 .* n + 1)), n, 1, inf);
summ = double(sn)

if summ != inf
  disp('Row convergent');
else
  disp('Row divergent');
end
