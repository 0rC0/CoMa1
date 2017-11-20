function z = add(x, y, rdname)
% x, y = Zahlen zu addieren
% rd = rudenfunktion

z = mult(add(x,y,rdname),add(x,y,rdname),rdname);

