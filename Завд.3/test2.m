warning off
clc

%%%%%%%%%% Завдання 2

disp('Enter matrix A:');
A = zeros(3, 3);
for i = 1:3
  for j = 1:3
    prompt = sprintf('Enter element A(%d, %d): ', i, j);
    A(i, j) = input(prompt);
  end
end

%R2+R1*(-2)
A(2, :) = A(2, :) - 2 * A(1, :);
%R1*3
A(1, :) = 3 * A(1, :);
%R2<->R3
temp = A(2, :);
A(2, :) = A(3, :);
A(3, :) = temp;

disp(A);
