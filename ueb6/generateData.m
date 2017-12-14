function y = generateData(x)
	format long
	%f^(-1) wird f2 genannt
	%val1 ist die verkettung f2(f1(x)) 
	%val2 ist die verkettung f1(f2(x))
	% Die relative fehlern (x - val1(bzw v2)) / x
	f1 = @(x) x*(x+2);
	f2 = @(x) sqrt(x+1)-1;
	f21 = concat(f2, f1);
	f12 = concat(f1, f2);
	val1 = f21(x);
	val2 = f12(x);
	err1 = (x - val1) / x;
	err2 = (x - val2) / x;
	y = [val1, val2, err1, err2];
end
