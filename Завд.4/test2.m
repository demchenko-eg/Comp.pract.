warning off
clc

%%%%  Завдання 2

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
    for divisor = 2:sqrt(num + 2)
      if rem(num + 2, divisor) == 0
        is_prime = false;
        break;
      end
    end
  end
  if is_prime
    count += 2;
  end
end
fprintf('Twin prime count: %d\n', count);


timeUsed = cputime - timeStart;
fprintf('Execution time: %.3f seconds\n', timeUsed);
