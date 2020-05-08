% exercicio 4.3 - slide aula 3
% parada tol => 6 DSE
% tol 0.5e-6
% não colocar k = inf para o método de newton-raphson = pode dar erro

close, clc, clear, format short
% fase 1 - analisar o gráfico para determinar o intervalo que contém z:
x = 0:0.01:10;
y = @(x) log(x)+ 3*exp(x-2);
plot(x,y(x)), grid
axis([0 3 -5 10])
% o zero da função está em [0.5,1]

%fase 2 - Refinamento
%método da bisseção
a = 0.5;
b = 1;
kmax = 1000;
tol = 0.5e-6;
[x, ERel, k] = Bissecao(y, a, b, tol, kmax)

%método Newton_raphson
x1 = 0.5;
[x, ERel, k] = newton_raphson(y, x1, tol, kmax)