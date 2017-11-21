function y = runden(x, L)

fmt = strcat('%.', num2str(L), 'f');
y = sprintf(fmt, x);

end
