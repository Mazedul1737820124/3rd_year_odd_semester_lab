% bit stream
n = [1, 0, 0, 1, 1, 0, 1, 0, 0];
% bit mapping
pre = -2;
for i = 1: length(n);
    if n(i) == 0
       m(i) = pre/-1;
       pre = m(i);
    else
        m(i) = pre;
    end
end

% pulse shapping
i = 1;
t = 0: 0.01: length(n)
for j = 1: length(t)
    if t(j) <= i - 0.5;
        y(j) = m(i);
    else if t(j) < i
            y(j) = m(i)/-1;
        else
        i = i+1;
        end
    end
end

%plotting
plot(t,y);
axis([0 9, -4 4])
xlabel('time');
ylabel('amplitude');
title('Differential Manchester');