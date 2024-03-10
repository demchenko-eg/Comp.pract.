warning off
clc
pkg load symbolic;

%%%%  Завдання 7

timeStart = cputime();

pi_long = vpa(pi, 15);
pi_str = char(pi_long);
for i = 1:length(pi_str) - 9
    sub_num_str = pi_str(i:i+9);
    sub_num_str_digits = sub_num_str(isstrprop(sub_num_str, 'digit'));
  if length(sub_num_str_digits) == 10
    sub_num = str2double(sub_num_str_digits);
    is_prime = true;
    for j = 2:sqrt(sub_num)
      if rem(sub_num, j) == 0
        is_prime = false;
        break;
      end
    end
    if is_prime
      disp(['Found prime number in pi: ' sub_num_str_digits]);
      break;
    end
  end
end

e_long = vpa(exp(1), 1000);
e_str = char(e_long);
for i = 1:length(e_str) - 9
    sub_num_str = e_str(i:i+9);
    sub_num_str_digits = sub_num_str(isstrprop(sub_num_str, 'digit'));
  if length(sub_num_str_digits) == 10
    sub_num = str2double(sub_num_str_digits);
    is_prime = true;
    for j = 2:sqrt(sub_num)
      if rem(sub_num, j) == 0
        is_prime = false;
        break;
      end
    end
    if is_prime
      disp(['Found prime number in e: ' sub_num_str_digits]);
      break;
    end
  end
end


timeUsed = cputime - timeStart;
fprintf('Execution time: %.3f seconds\n', timeUsed);
