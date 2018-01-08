function [c,k] = ggT_euclid(a,b)

%Usage [c,k] = ggT_euclid(a,b)

%if b>a, a und b vertauschen
if b>a
    tmp = a;
    a = b;
    b = tmp;
end

k = 0;

while b > 0
    k = k + 1;
    r = mod(a,b);
    a = b;
    b = r;
end
c = a;

end

