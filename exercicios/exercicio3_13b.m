% exercício 3.13 - livro
close, clear, clc, format short
% gráfico
f = @(x) x.^3 - 2*x - 5;
x = -3:0.01:3;
plot(x,f(x)), grid

% método newton-raphson
x1 = 2.5;
tol = 0.5e-12;
kmax = 1000;
[x, ERel, k] = newton_raphson_modificado_halley(f, x1, tol, kmax)
[x, ERel, k] = newton_raphson(f, x1, tol, kmax)