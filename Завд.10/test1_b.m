warning off
clc

A = [1 1 -6 -4; 3 -1 -6 -4; 2 3 9 2; 3 2 3 8];
B = [6; 2; 6; -7];

[n, m] = size(A);
X = zeros(n, 1);
det_A = det(A);

if det_A == 0
  error("The determinant of the matrix A is zero. Kramer's method cannot be used.");
end

for i = 1:n
  Ai = A;
  Ai(:, i) = B;
  X(i) = det(Ai) / det_A;
end

disp('Solution:');
disp(X);

