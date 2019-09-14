n = -20 : 0.01 : 20 ;

x1_n = (n  > 0).*10;
subplot(4,1,1);
plot(n,x1_n)
title('t > 0')
axis([-10 10 -10 10]);

x2_n = (n  == 0).*0;
subplot(4,1,2);
plot(n,x2_n)
title('t = 0')
axis([-10 10 -10 10]);

x3_n = (n  < 0).*-10;
subplot(4,1,3);
plot(n,x3_n)
title('t < 0')
axis([-10 10 -10 10]);

x_n = x1_n + x2_n + x3_n;
subplot(4,1,4);
plot(n,x_n)
title('Signum Signal');
axis([-20 20 -20 20]);


% 1 n > 0
% 0 n = 0
% -1 n < 0

