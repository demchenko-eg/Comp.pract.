warning off
clc

%%%%%%%%%% Завдання 1

disp('Enter matrix A:');
A = zeros(3, 3);
for i = 1:3
  for j = 1:3
    prompt = sprintf('Enter element A(%d, %d): ', i, j);
    A(i, j) = input(prompt);
  end
end

disp('Enter matrix B:');
B = zeros(3, 3);
for i = 1:3
  for j = 1:3
    prompt = sprintf('Enter element B(%d, %d): ', i, j);
    B(i, j) = input(prompt);
  end
end

summ = A + B;
disp('Summa A + B:');
disp(summ);

difference = A - B;
disp('Difference A - B:');
disp(difference);

product_AB = A * B;
disp('Product A * B:');
disp(product_AB);

product_BA = B * A;
disp('Product B * A:');
disp(product_BA);

division_AB = A / B;
disp('Division A / B:');
disp(division_AB);

division_BA = A \ B;
disp('Division A \ B:');
disp(division_BA);
