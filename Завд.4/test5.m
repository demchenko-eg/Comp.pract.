warning off
clc

%%%%  Завдання 5

timeStart = cputime();

random_nums = randi([10^9, (10^10)-1], 1, 10^7);
count = 0;

for num = random_nums
  is_prime = true;
  for divisor = 2:sqrt(num)
    if rem(num, divisor) == 0
      is_prime = false;
      break;
    end
  end
  if is_prime
    count += 1;
  end
end
percent_of_primes = count/(10^5);
fprintf('Percent of primes: %.2f%%\n', percent_of_primes)


timeUsed = cputime - timeStart;
fprintf('Execution time: %.3f seconds\n', timeUsed);
