warning off
clc


A = [3 -5 2 7 -1;
3 8 1 2 5;
7 -8 4 2 6;
2 19 0 9 3;
-18 6 -9 6 -25];
[a, b] = rref(A);
A(:, 5) = [];
A(:, 4) = [];
r = length(b);
disp('MLIS consists of vector columns: ');
disp(b);
disp('');
disp(['Rank matrix A = ', num2str(r)]);
