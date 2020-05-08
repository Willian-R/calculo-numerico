% exercício 3.15
clear,close,clc
% gráfico
f = @(x) x - cos(x);
x = -pi:0.01:pi;
plot(x,f(x)), grid
% derivada
df = @(x) sin(x) + 1;
% método Newton-Raphson
x1 = 1.0;
kmax = 4;
tol = 0;
ERel = inf;
xant = x1;
k = 1;
[x, ERel, k] = newton_raphson_modificado(f, x1, tol, kmax)