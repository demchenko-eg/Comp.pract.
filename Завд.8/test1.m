warning off
clc


a = input('Enter "a": ');
b = input('Enter "b": ');
c = input('Enter "c": ');
d = input('Enter "d": ');
e = input('Enter "e": ');

disp('');
fprintf('Answers equation %dx^4 + %dx^3 + %dx^2 + %dx + %d = 0\n', a, b, c, d, e);
disp(task1func(a, b, c, d, e));
