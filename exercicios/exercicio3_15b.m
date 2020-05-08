% exercício 3.15
clear,close,clc
% gráfico
f = @(x) x - cos(x);
x = -pi:0.01:pi;
plot(x,f(x)), grid
x1 = 1.0;
kmax = 1000;
tol = 0.5e-12;
[x, ERel, k] = newton_raphson_modificado_halley(f, x1, tol, kmax)
[x, ERel, k] = newton_raphson(f, x1, tol, kmax)