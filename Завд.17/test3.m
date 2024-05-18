warning off
clc
pkg load symbolic




syms n;
f11 = 1 / (n * (n ^ (1/3)));
f12 = 1 / ((n+1) * ((n+1) ^ (1/3)));

x = limit(f11, n, inf);
if x == 0
  summ = double(symsum(abs(f11), n, 1, inf));
  if summ != inf
    disp('Row 1 convergent absolutely');
  else
    disp('Row 1 convergent conditionally');
  end
else
  disp('Row 1 divergent');
end




function s = summ1(a1, a2, n_max)
  p1 = 1;
  p2 = 1;
  s = 0;
  for n = 1:n_max
    p1 *= a1(n);
    p2 *= a2(n);
    s += (p1 / p2) * ((-1) ^ (n + 1));
  end
end

f1 = @(n) 3 .* n - 2;
f2 = @(n) 2 .* n + 5;
n1 = 50;
n2 = 100;
y1 = summ1(f1, f2, n1);
y2 = summ1(f1, f2, n2);
if round(y1) == round(y2)
  disp('Row 2 convergent');
else
  disp('Row 2 divergent');
end
