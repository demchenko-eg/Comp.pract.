function count = task3func(a, b)
  bin_a = task2func(a);
  bin_b = task2func(b);
  len1 = length(bin_a);
  len2 = length(bin_b);
  if len1 < len2
    bin_a = [zeros(1, len2 - len1), bin_a];
  elseif len1 > len2
    bin_b = [zeros(1, len1 - len2), bin_b];
  end
  count = countBits(bin_a, bin_b, 1);
  function bitCount = countBits(str1, str2, currentIndex)
    if currentIndex > length(str1)
      bitCount = 0;
    else
      bitCount = (str1(currentIndex) ~= str2(currentIndex)) + countBits(str1, str2, currentIndex + 1);
    end
  end
end
