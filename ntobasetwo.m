function y = ntobasetwo(n,c)
n = floor(n) %falls nich eine Naturliche Zahl eingegeben wird
c = floor(c) %same for c

bin = []
tmp = n

while tmp > 0
    rem = mod(tmp, 2)
    bin = [rem;bin]
    tmp = floor(tmp/2)
end

output = bin((end-c+1):end)


