clear
clc

% bit stream
n = [0 1 0 1];

%signal amplitude
%for n(i) == 1 (initial)
z = -4;

%for n(i) == 0 (initial)
p =4  ;


% bit mapping
for i = 1 : length(n)
    if n(i) == 1
        put(i) = z/-1
        z = put(i)
    else
        put(i) = 0
    end
end

% pulse shapping
i = 1;
t = 0: 0.01: length(n)
for j = 1: length(t)
    if t(j) <= i
        y(j) = put(i);
    else y(j) = put(i)
        i = i+1;
    end
end

%plotting
plot(t,y);
axis([0 length(n), -8 8])
xlabel('time');
ylabel('amplitude');
title('POLAR NRZ-I');
