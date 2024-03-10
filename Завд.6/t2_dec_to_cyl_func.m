function [ro, fi, z_c] = t2_dec_to_cyl_func(x, y, z)
  ro = sqrt(x^2 + y^2);
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
  z_c = z;
  fprintf('Coordinates in Cylindrical Coordinate System: (%.2f, %.2f, %.2f)\n', ro, fi, z_c);
end
