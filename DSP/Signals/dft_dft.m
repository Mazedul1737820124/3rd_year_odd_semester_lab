xn = [0 1 2 3]
xn = xn.';
N = length(xn)
n = 0 : N-1
 for k = 0 : N-1
     X(k+1) = exp(-j*pi*k*n/N)*xn;
 end
 disp('X(k)')
 disp(X)
 
 k = 0 : N-1
 
 subplot(3,1,1)
 stem(k,xn)
 xlabel('time (s)')
 ylabel('Amplidute')
 title('Input sequense')
 
  
 subplot(3,1,2)
 stem(k,X)
 xlabel('Frequence')
 ylabel('|X(k)|')
 title('Magnitude')
 
 subplot(3,1,3)
 stem(k,angle(X))
 xlabel('Frequence')
 ylabel('phase')
 title('phase response')
     