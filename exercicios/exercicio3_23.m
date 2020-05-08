% exercício 3.13 - livro
close, clear, clc, format short
% gráfico
f = @(x) x.^3 - 2*x - 5;
x = -3:0.01:3;
plot(x,f(x)), grid

% expressão da f'(x)
df = @(x) 3*x.^2 - 2;

% método newton-raphson
x1 = 2.5;
ERel = inf;
k = 1;
xant = x1;
tol = 0;
kmax = 4;
[x, ERel, k] = newton_raphson_modificado(f, x1, tol, kmax)