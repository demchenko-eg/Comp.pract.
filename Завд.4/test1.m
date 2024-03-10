warning off
clc

%%%%  Завдання 1

timeStart = cputime();

primes = [];
for num = 2:10^6
  is_prime = true;
  for divisor = 2:sqrt(num)
    if rem(num, divisor) == 0
      is_prime = false;
      break;
    end
  end
  if is_prime
    primes = [primes, num];
  end
end
fprintf('Prime numbers: %s\n', num2str(primes));


timeUsed = cputime - timeStart;
fprintf('Execution time: %.3f seconds\n', timeUsed);
