function plotGraphics()

%4a
fig = figure(1);
f  =  @( x )   sin(x) ;
X = linspace(1,2*pi,100);
plot(X, f(X))
title('sin(x)')
xlabel('0 < x < 2 * pi')
print(fig, 'plot1.png', '-dpng')

%4b
fig = figure(2);
f  =  @( x )   floor(x) ;
X = linspace(0,10,100);
plot(X, f(X), '.')
title('floor(x)')
print(fig, 'plot2.png', '-dpng')

%4c
fig = figure(3);
f  =  @( x )   x.^2;
X = linspace(0,10,100);
loglog(X, f(X))
title('x^2')
print(fig, 'plot3.png', '-dpng')

%4d
fig = figure(4);
f  =  @( x )   sin(x);
g  =  @( x )   cos(x);
h  =  @( x )   (1./(2.*pi)).*x.*(2.*pi -x);
X = linspace(0,2*pi,100);
plot(X, f(X), 'red');
hold on;
plot(X, g(X), 'blue');
hold on;
plot(X, h(X), 'yellow');
legend('sin(x)', 'cos(x)', '(1./(2.*pi)).*x.*(2.*pi -x)' )
print(fig, 'plot4.png', '-dpng')
