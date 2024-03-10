function task6func(a, b, n)
  if gcd(a, n) == 1
    a_inv = mod(a ^ -1, n);
    x = mod(a_inv * b, n);
    disp(['x kongr ' num2str(x) ' (mod ' num2str(n) ')']);
  else
    disp("Рівняння не має розв'язків");
  end
end







