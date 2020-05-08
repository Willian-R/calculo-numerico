% 3.16 - livro
close, clear, clc
% gráfico
f = @(x) x.*cos(x.^2);
x = 1:0.01:2;
plot(x,f(x)), grid
% derivada
syms x
df = matlabFunction(diff(f(x)));
% método de Newton-Raphson
k = 1;
kmax = 4;
x1 = 1.2;
xant = x1;
tol = 0;
ERel = inf;
[x, ERel, k] = newton_raphson_modificado(f, x1, tol, kmax)