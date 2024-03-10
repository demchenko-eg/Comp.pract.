function result = task2func(p1, p2, p3, p4, vect1, vect2, vect3)
  result = vect1(1)*vect2(2)*vect3(3)+vect1(2)*vect2(3)*vect3(1)+vect2(1)*vect3(2)*vect1(3)-vect1(3)*vect2(2)*vect3(1)-vect1(1)*vect2(3)*vect3(2)-vect3(3)*vect1(2)*vect2(1);
  disp(['Scalar triple product = ' num2str(result)]);
  if result == 0
    disp('These vectors are coplanar.');
  else
    disp('These vectors are non-coplanar.');
  end
  vect4 = [p2(1)-p1(1), p2(2)-p1(2), p2(3)-p1(3)];
  vect5 = [p3(1)-p1(1), p3(2)-p1(2), p3(3)-p1(3)];
  vect6 = [p4(1)-p1(1), p4(2)-p1(2), p4(3)-p1(3)];
  result = vect4(1)*vect5(2)*vect6(3)+vect4(2)*vect5(3)*vect6(1)+vect5(1)*vect6(2)*vect4(3)-vect4(3)*vect5(2)*vect6(1)-vect4(1)*vect5(3)*vect6(2)-vect6(3)*vect4(2)*vect5(1);
  if result == 0
    result = 'These points lie in the same plane.';
    return
  else
    result = 'These points do not lie in the same plane.';
    return
  end
end
