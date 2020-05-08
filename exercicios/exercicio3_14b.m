% exercício 3.14 - livro
close,clear,clc
% gráfico
f = @(x) x + log(x);
x = 0.001:0.01:1;
plot(x,f(x)),grid
x1 = 0.5;
kmax = 1000;
xant = x1;
tol = 0.5e-12;
[x, ERel, k] = newton_raphson_modificado_halley(f, x1, tol, kmax)
[x, ERel, k] = newton_raphson(f, x1, tol, kmax)