warning off
clc

pkg load symbolic;

A = 5;
B = 7;
C = 2;
p1 = [15, 1, 0];
p2 = [7, 2, 1];


##A = input('Enter A: ');
##B = input('Enter B: ');
##C = input('Enter C: ');
##p1 = input('Enter the coordinates of 1 point in the format [x, y, z]: ');
##p2 = input('Enter the coordinates of 2 point in the format [x, y, z]: ');

[r1, r2] = task3func(A, B, C, p1, p2);
disp('');
disp('Parametric equation:')
disp(r1);
disp('');
disp(['Coefficients of the general equation [' num2str(r2) ']']);
