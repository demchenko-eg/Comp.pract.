function [parametric_equation, general_equation] = task3func(A, B, C, p1, p2)
  norm_factor = sqrt(A^2 + B^2);
  A = A / norm_factor;
  B = B / norm_factor;
  C = C / norm_factor;
  if A ~= 0
    x0 = -C / A;
    y0 = 0;
  else
    x0 = 0;
    y0 = -C / B;
  end
  syms t;
  x_t = x0 + A * t;
  y_t = y0 + B * t;
  parametric_equation = [x_t; y_t];

  v = [p2(1)-p1(1), p2(2)-p1(2), p2(3)-p1(3)];
  A = v(1);
  B = v(2);
  C = v(3);
  D = -(A*p1(1) + B*p1(2) + C*p1(3));
  general_equation = [A, B, C, D];
end
