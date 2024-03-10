function [r, fi] = t2_dec_to_pol_func(x, y)
  r = sqrt(x^2 + y^2);
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
  fprintf('Coordinates in Polar Coordinate System: (%.2f, %.2f)\n', r, fi);
end
