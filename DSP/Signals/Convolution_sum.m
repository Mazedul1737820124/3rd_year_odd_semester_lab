x_n= [1 2 3 1]
h_n= [1 2 1 -1]

xn = -1:2
subplot(3,1,1)
stem(xn,x_n);

hn = 0:3
subplot(3,1,2)
stem(hn,h_n);

startIndex = xn(1) + hn(1);
endIndex = xn(length(x_n)) + hn(length(h_n));
n =  startIndex : endIndex
y_n = conv(x_n,h_n);

subplot(3,1,3)
stem(n,y_n)
axis([-10,10 ,-10, 10])
xlabel('n');
ylabel('Amplitude');
title('Convolution sum');

