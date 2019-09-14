% bit stream
n = [0, 0, 1, 1, 0];

% bit mapping
for i = 1: length(n);
    if n(i) == 1
        nn(i) = 3;
    else
        nn(i) = -3
    end
end

% pulse shapping
i = 1;
t = 0: 0.01: length(n)
for j = 1: length(t)
    if t(j) <= (i - 0.5)
        y(j) = nn(i);
    else if t(j) <= i
            y(j) = 0;
        else
        i = i+1;
        end
    end
end

%plotting
plot(t,y);
axis([0 6, -4 4])
xlabel('time');
ylabel('amplitude');
title('POLAR RZ');
