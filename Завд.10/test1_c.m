warning off
clc



A = [1 1 -6 -4; 3 -1 -6 -4; 2 3 9 2; 3 2 3 8];
B = [6; 2; 6; -7];


ex_matrix = [A, B];
[row, col] = size(ex_matrix);
for i = 1:row
  for j = i+1:row
    mult = ex_matrix(j, i) / ex_matrix(i, i);
    ex_matrix(j, :) = ex_matrix(j, :) - mult * ex_matrix(i, :);
  end
end

x = zeros(row, 1);
for i = row:-1:1
    x(i) = (ex_matrix(i, end) - ex_matrix(i, i+1:row) * x(i+1:row)) / ex_matrix(i, i);
end


disp('Solution:');
disp(x);

