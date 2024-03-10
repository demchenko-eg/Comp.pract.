warning off
clc

%%%%  Завдання 6

timeStart = cputime();

random_nums = [];
count = 0;

while length(random_nums) < 10^7
  num = randi([10^9, (10^10)-1], 1, 1);
  if ~any(rem(num, [2, 3, 5, 7, 11]) == 0)
    random_nums = [random_nums, num];
    if isprime(num)
      count = count + 1;
    end
  end
end
percent_of_primes = count/(10^5);
fprintf('Percent of primes: %.2f%%\n', percent_of_primes)


timeUsed = cputime - timeStart;
fprintf('Execution time: %.3f seconds\n', timeUsed);
