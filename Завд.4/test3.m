warning off
clc

%%%%  Завдання 3

timeStart = cputime();

count = 0;
for num = 2:10^6
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
fprintf('Count of prime numbers: %d\n', count);


timeUsed = cputime - timeStart;
fprintf('Execution time: %.3f seconds\n', timeUsed);
