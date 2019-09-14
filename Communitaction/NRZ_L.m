n = [0 1 0 1 1 1  1 0 1 0 1 0 1]

for i = 1 : length(n)
    if n(i) == 1
        put(i) = 4
    else put(i) = -4
    end
end

i = 1
t = 0 : 0.01 : length(n)
for j = 1 : length(t)
    if t(j) <= i
        y(j) = put(i)
    else y(j) = put(i)
        i = i+1
    end
end

plot(t,y)
axis([0,length(n),-6,6])