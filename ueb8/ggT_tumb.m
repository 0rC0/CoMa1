function [c,k] = ggT_tumb(a,b)

%Usage [c,k] = ggT_tumb(a,b)

k = 0;
if b == 0 ggT=a;
else
    for i = 1:b
        k = k + 2;
        if mod(a,i) == 0 & mod(b,i) == 0
            c = i;
        end
    end
end
end
