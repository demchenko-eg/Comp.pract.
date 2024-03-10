warning off
clc


x0 = input('Enter initial value: ');
a = input('Enter multiplier: ');
c = input('Enter increment: ');
m = input('Enter the modulus greater than the initial value, the multiplier, the increment and greater than or equal to 2: ');
n = 1000;
##n = input('Enter the number of numbers required: ');

disp(floor(task9func(x0, a, c, m, n) * 10));
