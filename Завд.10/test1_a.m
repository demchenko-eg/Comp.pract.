warning off
clc



A = [1 1 -6 -4; 3 -1 -6 -4; 2 3 9 2; 3 2 3 8];
B = [6; 2; 6; -7];

X = linsolve(A, B);

disp('Solution:');
disp(X);

