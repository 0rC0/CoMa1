function y = ntobasetwo(n,c)

n = floor(n); %falls nich eine Naturliche Zahl eingegeben wird
bin = [];
tmp = n;
output = [];

%berechnen n in base 2
while tmp > 0
    rem = mod(tmp, 2);
    bin = [rem;bin];
    tmp = floor(tmp/2);
end

%Vektor laenge c erzeugen
l = length(bin);
if l >= c
    y = bin((end-c+1):end);
else
    z = zeros(c-l,1);
    y = [z;bin];
end

end
