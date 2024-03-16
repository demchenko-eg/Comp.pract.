function [r, phi] = task2func(a, b)
  r = abs(complex(a, b));
  phi = angle(complex(a, b));
  fprintf('Trigonometric form: %.2f * (cos(%.2f) + i*sin(%.2f))\n', r, phi, phi);
end
