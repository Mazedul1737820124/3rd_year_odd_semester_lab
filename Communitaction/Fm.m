% sine wave amplitude
fm= 25;
fc = 400;
m = 10;
t = 0 : 0.0001 : 0.1;
subplot(3,1,1)
m_t = sin(2*pi*fm*t);
plot(t,m_t);
title('message signal');


c_t = sin(2*pi*fc*t);
subplot(3,1,2);
plot(t,c_t);
title('Carrier Signal');


%y_t = ac*cos(2*pi*fc*t) + b.*sin(2*pi*fa*t)
y_t = sin(2*pi*fc*t + (m.*sin(2*pi*fm*t)));
subplot(3,1,3);
plot(t,y_t);
title('FM');








