warning off
clc

%%%%  Завдання 4

timeStart = cputime();

x1 = 1:0.1:10^6;
x = 1:1:10^6;
count = 0;
counts = zeros(1, 10^6);
g = x/log(x);

for num = 1:10^6
  is_prime = true;
  for divisor = 2:sqrt(num)
    if rem(num, divisor) == 0
      is_prime = false;
      break;
    end
  end
  if is_prime
    counts(num) += count;
    count += 1;
  else
    counts(num) += counts(num-1);
  end
end

plot(x, counts);
hold on;
plot(x1, g, 'g');
hold off;


timeUsed = cputime - timeStart;
fprintf('Execution time: %.3f seconds\n', timeUsed);
