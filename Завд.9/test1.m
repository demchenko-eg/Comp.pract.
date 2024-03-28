warning off
clc
pkg load linear-algebra;


A = [2:11];
B = 2*[1:length(A)];



disp('A ∪ B:');
disp(union(A, B));
disp('');
disp('A ∩ B:');
disp(intersect(A, B));
disp('');
disp('A \ B:');
disp(setdiff(A, B));
disp('');
disp('B \ A:');
disp(setdiff(B, A));
disp('');
disp('A Δ B:');
disp(setxor(A, B));
disp('');
disp('(A ∪ B)^2:');
disp((union(A, B)).^2);
disp('');
##result = [];
##for i = 1:length(A)
##  for j = 1:length(intersect(A, B))
##    result = [result; [A(i), intersect(A, B)(j)]];
##  end
##end
disp('A * (A ∩ B):');
##disp(result);
disp(cartprod(A, intersect(A, B)));
disp('');
disp('B * A:');
disp(cartprod(B, A));

