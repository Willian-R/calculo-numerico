% 3.16 - livro
close, clear, clc
% gráfico
f = @(x) x.*cos(x.^2);
x = 1:0.01:2;
plot(x,f(x)), grid
kmax = 1000;
x1 = 1.2;
tol = 0.5e-12;
[x, ERel, k] = newton_raphson_modificado_halley(f, x1, tol, kmax)
[x, ERel, k] = newton_raphson(f, x1, tol, kmax)