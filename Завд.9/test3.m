warning off
clc


x = -100:0.1:400;
y1 = abs(sin(x));
y2 = (2*x)./(201*pi);

##plot(x, y1, 'b', x, y2, 'r');
##xlabel('x');
##ylabel('y');
##title('|sin(x)| та 2x/(201*pi)');
##legend('|sin(x)|', '2x/(201*pi)');
##grid on;

disp(['Number of roots: ', num2str(sum(abs(y1 - y2) < 0.01))]);

