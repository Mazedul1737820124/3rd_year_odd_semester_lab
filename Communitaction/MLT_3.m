% bit stream
n = [1, 1, 0, 0, 1, 1];

%signal amplitude 
z2 = 2;
p = 1;

% bit mapping
for i = 1: length(n);
    
    if n(i) == 1
        nn(i) = z2
        a = z2
        if p == 1
            z2 = 0
            p = 2
        else if p == 2
                z2 = -2
                p = 3
            else if p == 3
                    z2 = 0
                    p = 4
                else
                    z2 = 2
                    p = 1
                end
            end
        end
                  
                     
           
    else
       
        %nn(i) = 0;
        nn(i) = a;
    end
end

% pulse shapping
i = 1;
t = 0: 0.01: length(n)
for j = 1: length(t)
    if t(j) <= i
        y(j) = nn(i);
    else y(j) = nn(i);
        i = i+1;
    end
end

%plotting
plot(t,y);
axis([0 length(n), -3 3])
xlabel('time');
ylabel('amplitude');
title('MLT-3');
