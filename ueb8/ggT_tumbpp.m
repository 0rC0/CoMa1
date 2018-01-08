function [c,k] = ggT_tumb(a,b)

%Usage [c,k] = ggT_tumb(a,b)

%if b>a, a und b vertauschen
if b>a
    tmp = a;
    a = b;
    b = tmp;
end

k = 0;
c = -1;
if b == 0 c=a;
else
    for i = b:-1:2
        k = k + 2;
        if mod(a,i) == 0 & mod(b,i) == 0
            c = i;
            break
        end
    end
    %wenn am ende der schleife kein ggt gefunden wurde,, dann ggT=1
    if c == -1 c=1;
    end
end
end
