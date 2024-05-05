warning off
clc


f = @(x) sqrt((1 - (x.^2 / 25)) ./ 0.0625);
fx = @(x) x .* sqrt((1 - (x.^2 / 25)) ./ 0.0625);
f2 = @(x)(1 - (x.^2 / 25)) ./ 0.0625;
area = integr(f, 0, 5, 1000);
x0 = (1 / area) * integr(fx, 0, 5, 1000);
y0 = (1 / (2 * area)) * integr(f2, 0, 5, 1000);

disp(["Coordinates of the center of gravity of the point: (", num2str(x0), ", ", num2str(y0), ")"]);
