warning off
clc


xstep = [0.1, 0.2, 0.2, 0.1, 0.15];
ystep = [0.1, 0.2, 0.2, 0.1, 0.2];
deg = [2, 3, 2, 3, 2];
n = [2, 2, 3, 5, 3];
copm_n = [];

for real_part = -10: xstep: 10
  for imag_part = -10: ystep: 10
    z = real_part + 1i * imag_part;
    value = round(abs(z).^deg);
    if mod(value, n) == 0
      copm_n = [copm_n, z];
    end
  end
end

scatter(real(copm_n), imag(copm_n), 'filled');
title('round(|x+yi|^deg)%n==0');
xlabel('Re');
ylabel('Im');
grid on;

