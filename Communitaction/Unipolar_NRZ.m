% bit stream
n = [1, 0, 1, 1, 0];

% bit mapping
for i = 1: length(n);
    if n(i) == 1
        nn(i) = 4;
    else
        nn(i) = 0
    end
end

% pulse shapping
i = 1;
t = 0: 0.01: length(n)
for j = 1: length(t)
    if t(j) <= i
        y(j) = nn(i);
    else y(j) = nn(i)
        i = i+1;
    end
end

%plotting
plot(t,y);
axis([0 6, -6 6])
xlabel('time');
ylabel('amplitude');
title('UNIPOLAR NRZ');
