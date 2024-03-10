function [x, y] = t2_pol_to_dec_func(r, fi)
  x = r*cos(fi);
  y = r*sin(fi);
  fprintf('Coordinates in RCCS: (%.2f, %.2f)\n', x, y);
end
