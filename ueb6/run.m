% run.m
format long #wir brauchen zahlen wie -1 * 10^12
k = [0:12]
f = @(x) (-1 + 10.^x)
erg = []; %ergebnisse matrix
for i=k
	tmp = cat(2,i,generateData(i));
	erg = cat(1,tmp,erg);
end

%ToDo: export as csv

