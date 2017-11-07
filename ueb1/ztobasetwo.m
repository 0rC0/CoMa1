function y = ztobasetwo(z,c)

if z < 0
    y = complement(ntobasetwo(abs(z),c));
else
    y = ntobasetwo(z,c);
end

end
