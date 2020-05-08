%exemplo 1,2,3 - splines
close,clc,clear,format short
x = [1 2 4 7]';
y = [2 4 1 3]';

%1) polin�mio interpolador p(x) - m�todo de Vandermonde
n = length(x);
X = MVander(x,n-1);
c = Gauss(X,y)

%gr�fico dos nodos e p(x) na mesma janela gr�fica
plot(x,y,'*'),grid,hold on
u = min(x):0.01:max(x);
v = VPol(c,u);
plot(u,v,'r')

% 2) spline c�bico interpolador S(x)
[C] = CoefSpline3(x,y)

%gr�fico do spline interpolador na mesma janela
v = ISpline3(x,y,u);
plot(u,v,'b')