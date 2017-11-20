function z = add(x, y, rdname)
% x, y = Zahlen zu addieren
% rd = rudenfunktion
L = 2;
rd = str2func(rdname);
z = rd(rd(x,L) + rd(y,L),L);

