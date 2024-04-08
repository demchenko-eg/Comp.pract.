warning off
clc


eps = 10^(-5);

## a)

n = 0;
cp = Inf;
x_0 = 0;

while cp > eps
  x_1 = sum((1:n).^2) / (n + 1)^3;
  x_0 = sum((1:(n + 1)).^2) / (n + 2)^3;
  cp = abs(x_1 - x_0);
  n = n + 1;
end
printf("Limit (a): %d", x_1)
printf("\nn0 = %d\n\n", n)


## b)

n = 1;
cp = Inf;
x_0 = 0;
while cp > eps
  x_1 = x_0 + 1 / (n * (n + 1));
  cp = abs(x_1 - x_0);
  x_0 = x_1;
  n = n + 1;
end
printf("\nLimit (b): %d", x_1)
printf("\nn0 = %d\n", n)

