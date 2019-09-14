x_n= [0 0 2 -1 3 7 1 2 -3 0 0]
y_n= [0 0 1 -1 2 -2 4 1 -2 5 0 0]

xn = -6:4
subplot(3,1,1);
stem(xn,x_n)

yn = -5:6
y_n =  flip(y_n)
subplot(3,1,2);
stem(yn,y_n)


startIndex = xn(1) + yn(1);
endIndex = xn(length(x_n)) + yn(length(y_n));
n =  startIndex : endIndex
r_xy = convn(x_n,y_n);
subplot(3,1,3)
stem(n,r_xy);

xlabel('Discrete value');
ylabel('Amplitude');
title('Cross correlation');
