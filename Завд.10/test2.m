warning off
clc



A = [2 7 3 1; 1 3 5 -2; 1 5 -9 8; 5 18 4 5];
B = [5; 3; 1; 12];


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


if any(isnan(x))
  disp('The system has multiple solutions or no solutions at all.');
else
  disp('Solution:');
  disp(x);
end
