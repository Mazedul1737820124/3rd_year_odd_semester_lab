n = -20 : 20;
x_n = (n >= 0).*n;

%stem(n,x_n);
stem(n,x_n);
xlabel('Time');
ylabel('Amplitude');
title('Ramp Signal');
axis([-20 20 -20 20]);

% n  n >= 0
% 0  n < 0