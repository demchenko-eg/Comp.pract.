warning off
clc


eps = 10^(-5);

% a

x = 0;
sup = 0;
inf = Inf;
diff = 1;
n = 1;
Max_iter = 1000;
while abs(diff) > eps
  xn = (1+2*((-1)^n))/(3+((-1)^n));
  if xn > sup
    sup = xn;
  end
  if xn < inf
    inf = xn;
  end
  diff = xn - x;
  if n > Max_iter
    break
  end
  n++;
end

printf("Upper limit (a): %d", sup);
printf("\nLower limit (a): %d\n", inf);


% b

x = 0;
sup = 0;
inf = Inf;
diff = 1;
n = 1;
Max_iter = 1000;
while abs(diff) > eps
  xn = ((-1)^n)*((n+1)/(n+2))+sin((pi*n)/2);
  if xn > sup
    sup = xn;
  end
  if xn < inf
    inf = xn;
  end
  diff = xn - x;
  if n > Max_iter
    break
  end
  n++;
end

printf("Upper limit (b): %d", sup);
printf("\nLower limit (b): %d\n", inf);
