warning off
clc

%%%%%%%%%% Завдання 3

user_vector = input('Enter vector(example, [2; 3; 1]: ');

disp(A*user_vector-B);
A = [2 1 3; 1 1 1; 1 3 2];
B = [10; 6; 13];
X = linsolve(A, B);

if isequaln(A*X, B) < eps
  disp('Correct solution');
  disp('Solution:');
  disp(X);
else
  disp('Incorrect solution');
end

if isequaln(A*user_vector, B)
    disp('Enter vector is correct');
else
    disp('Enter vector is incorrect');
end
