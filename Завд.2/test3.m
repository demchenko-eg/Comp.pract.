warning off
clc



%%%%%%%%%%  Завдання №3  %%%%%%%%%%%%%%%%
x=-3:0.1:3;
x1 = -3:0.1:0;
x2 = 0:0.1:3;

%%%%%%%%%%  1.  %%%%%%%%%
y1 = sin(x).*exp(-2*x);
g11 = (1+(x1.^2))./sqrt(1+(x1.^4));
g12 = (2*x2+((sin(x2).^2)./(2+x2)));
plot(x, y1, 'r');
hold on;
plot(x1, g11, 'b');
plot(x2, g12, 'b');
xlabel('X');
ylabel('Y');
legend('y', 'g');
hold off;


