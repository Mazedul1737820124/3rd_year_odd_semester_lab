n = -20 : 20;
x_n = (n >= 0).*10;

stem(n,x_n);
%plot(n,x_n);
xlabel('Time');
ylabel('Amplitude');
title('Unit Step Signal');
axis([-20 20 -20 20]);

% 1  n >= 0
% 0 n < 0