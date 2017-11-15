function y = fixedpoint(X)

%gibt aus ein Vektor, mit den Werte von X durch kaufmaenniches Runden hat

Y=[];
for i=X
    Y=[Y;round(i,1)];
end

y = Y.';
end
