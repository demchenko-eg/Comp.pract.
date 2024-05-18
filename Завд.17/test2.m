warning off
clc
pkg load symbolic


syms n;

f11 = (1000 ^ n) / factorial(n);
f12 = (1000 ^ (n+1)) / factorial(n+1);
x = double(limit(f12/f11, n, inf));
if x < 1
  disp('Row 1 convergent');
else
  disp('Row 1 divergent');
end


f2 = (((n + 1) / n) ^ n) / (3 ^ n);
x = limit(f2 ^ (1 / n), n, inf);
if x < 1
  disp('Row 2 convergent');
else
  disp('Row 2 divergent');
end

