function [r, teta, fi] = t2_dec_to_sph_func(x, y, z)
  r = sqrt((x^2)+(y^2)+(z^2));
  if x == 0
    if y > 0
      fi = pi/2;
    elseif y < 0
      fi = -pi/2;
    else
      fi = 0;
    end
  else
    fi = atan2(y, x);
  end
  if r == 0
    teta = 0;
  else
    teta = acos(z/r);
  end
  fprintf('Coordinates in Spherical Coordinate System: (%.2f, %.2f, %.2f)\n', r, fi, teta);
end
