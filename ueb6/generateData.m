function y = generateData(x)
	%f^(-1) wird f2 genannt
	%val1 ist die verkettung f2(f1(x)) 
	%val2 ist die verkettung f1(f2(x))
	% Die relative fehlern (x - val1(bzw v2)) / x
	f1 = @(x) x*(x+2);
	f2 = @(x) sqrt(x+1)-1;
	val1 = concat(f2, f1, x);
	val2 = concat(f1, f2, x);
	err1 = (x - v1) / x;
	err2 = (x - v2) / x;
	y = [val1, val2, err1, err2];
end
