%exemplo 3 - aula 10
clear,clc,close,format short
%nodos/pontos
x = [-2 1 2 3 4 5]';
y = [6 13 -1 -9 11 7]';
plot(x,y,'*'),grid,hold on

%montar e resolver o sistema Xc=y
n = length(x);
X = MVander(x,n-1);
c = Gauss(X,y)

%p(x) pode ser definido pela fun��o poly2sym
p = poly2sym(c)

% plotar o gr�fico de p(x) na mesma janela gr�fica que cont�m os nodos:
u = min(x):0.01:max(x);
v = VPol(c,u);
plot(u,v,'r')
hold off