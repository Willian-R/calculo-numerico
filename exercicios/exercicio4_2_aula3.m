% exercicio 4.2 - slide aula 3
% parada tol => 6 DSE
% tol 0.5e-6
% n�o colocar k = inf para o m�todo de newton-raphson = pode dar erro

close, clc, clear, format short
% fase 1 - analisar o gr�fico para determinar o intervalo que cont�m z:
x = 0:0.01:10;
f = @(x) 2.^x - 2.*x.^2 + 1;
plot(x,f(x)), grid
axis([0 2 -3 3])
% o zero da fun��o est� em [1,2]

%fase 2 - Refinamento
%m�todo da bisse��o
a = 1;
b = 2;
kmax = 1000;
tol = 0.5e-6;
[x, ERel, k] = Bissecao(f, a, b, tol, kmax)

%m�todo Newton_raphson
x1 = 1;
[x, ERel, k] = newton_raphson(f, x1, tol, kmax)