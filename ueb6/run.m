% run.m
%wir brauchen zahlen wie -1 * 10^12
format long 
k = [0:12]
f = @(x) (-1 + 10.^x)
erg = []; %ergebnisse matrix
for i=k
	tmp = cat(2,i,generateData(i));
	erg = cat(1,tmp,erg);
end

%Exportiere als csv
%Ref: https://de.mathworks.com/help/matlab/ref/csvwrite.html?s_tid=gn_loc_drop
csvwrite('daten.txt', erg);

%Tabelledarstellung
%Ref: https://de.mathworks.com/help/matlab/ref/array2table.html

array2table(erg, 'VariableNames',{'k','val1','val2', 'err1', 'err2'})
