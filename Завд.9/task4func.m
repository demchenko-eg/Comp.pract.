function result = task4func(a, b)
  irr = rand(2, 1) * (b - a) + a;
  irr = sort(irr);
  disp(rat(irr(1) + rand() * (irr(2) - irr(1))));
end


##function result = task4func(a, b)
##  irr = rand(2, 1) * (b - a) + a;
##  irr = sort(irr);
##  disp(rat(irr(1) + rand() * (irr(2) - irr(1))));
##  [n, d] = rat(irr(1) + rand() * (irr(2) - irr(1)));
##  disp([n, d]);
##end

