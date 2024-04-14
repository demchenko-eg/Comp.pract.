warning off
clc


xi = [1, 2, 3, 4, 5];
fi = [0, 1, 2, 1, 2];

x1 = 1;
h = 1;
i1 = find(xi == x1);
f1 = (fi(i1 + 2*h) - fi(i1)) / (2 * h);
x2 = 3;
i2 = find(xi == x2);
f2 = (fi(i2 + 1) - fi(i2 - 1)) / (2 * h);

fprintf("f'(1): %.4f\n", f1);
fprintf("f'(3): %.4f\n", f2);

