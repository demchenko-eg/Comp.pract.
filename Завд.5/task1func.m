function result = task1func(v1, v2, v3, vect1, vect2)
  result = [v1(2)*v2(3)-v1(3)*v2(2), v1(3)*v2(1)-v1(1)*v2(3), v1(1)*v2(2)-v1(2)*v2(1)];
  side1 = sqrt(((v2(1)-v1(1))^2)+((v2(2)-v1(2))^2)+((v2(3)-v1(3))^2));
  side2 = sqrt(((v3(1)-v1(1))^2)+((v3(2)-v1(2))^2)+((v3(3)-v1(3))^2));
  side3 = sqrt(((v2(1)-v3(1))^2)+((v2(2)-v3(2))^2)+((v2(3)-v3(3))^2));
  s = (side1+side2+side3)/2;
  area = sqrt(s*(s-side1)*(s-side2)*(s-side3));
  disp(['Area = ' num2str(area)]);
  fprintf('Vector product = ');
end
