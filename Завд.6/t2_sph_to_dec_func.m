function [x, y, z] = t2_sph_to_dec_func(r, teta, fi)
  x = r*sin(teta)*cos(fi);
  y = r*sin(teta)*sin(fi);
  z = r*cos(fi);
  fprintf('Coordinates in RCCS: (%.2f, %.2f, %.2f)\n', x, y, z);
end
