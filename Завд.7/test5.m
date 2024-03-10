warning off
clc

a = input(' Enter a: ');
e = input(' Enter e: ');
n = input(' Enter n: ');

timeStart = cputime();
disp(task5_1func(a, e, n));
timeUsed = cputime - timeStart;
fprintf('Execution time first function: %.3f seconds\n', timeUsed);

timeStart = cputime();
disp(task5_2func(a, e, n));
timeUsed = cputime - timeStart;
fprintf('Execution time second function: %.3f seconds\n', timeUsed);
