function y = complement(b)
%Zweierkomplement: umklappen und 1 addieren

tmp = b;

%umklappen
for i = 1:length(tmp)
    if tmp(i) == 1
        tmp(i) = 0;
    else
        tmp(i) = 1;
    end
end

%1 addieren
for i = length(tmp):-1:1
    if tmp(i) == 1
        tmp(i) = 0;
    else
        tmp(i) = 1;
        break
    end
end

y = tmp;

end
