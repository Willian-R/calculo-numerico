% exercicio 4.1 - slide aula 3
% parada tol => 6 DSE
% tol 0.5e-6
%não colocar k = inf para o método de newton-raphson

close, clc, clear, format short
% fase 1 - analisar o gráfico para determinar o intervalo que contém z:
x = 0:0.01:5;
g = @(x) sqrt(x+1)-x.^(-2);
plot(x,g(x)), grid
axis([0 5 -10 10])
% o zero da função está em [0.5,1}

%fase 2 - Refinamento
%método da bisseção
a = 0.5;
b = 1;
kmax = 1000;
tol = 0.5e-6;
[x, ERel, k] = Bissecao(g, a, b, tol, kmax)

%método Newton_raphson
x1 = 1;
[x, ERel, k] = newton_raphson(g, x1, tol, kmax)