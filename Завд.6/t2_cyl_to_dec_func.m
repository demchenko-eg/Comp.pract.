function [x, y, z] = t2_cyl_to_dec_func(ro, fi, z_c)
  x = ro*cos(fi);
  y = ro*sin(fi);
  z = z_c;
  fprintf('Coordinates in RCCS: (%.2f, %.2f, %.2f)\n', x, y, z);
end
