%exemplo 5 - aula 4
close, clear, clc, format short
t = 0:0.1:500;
f = @(t) t.*(cosh(200./t)-1)-100;
plot(t,f(t)), grid
axis([0 500 -100 100])

%o zero da fun��o est� em [200,250]
a = 200;
b = 250;
%o exerc�cio n�o definiu m�todo, vamos aplicar os dois:

% 1)Bisse��o:
%como os crit�rios de para n�o foram determinados,
% precisamos estabelecer valores.
tol = 0.5e-8;
kmax = 1000;
[t, ERel, k] = Bissecao(f, a, b, tol, kmax)

% NR:
x1 = 200;
[t, ERel, k] = newton_raphson(f, x1, tol, kmax)

%considerando t obtido pelo m�todo NR, vamos calcular o comprimento
%solicitado
L = 2*t*sinh(200/t)