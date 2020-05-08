% exerc�cio 3.14 - livro
close,clear,clc
% gr�fico
f = @(x) x + log(x);
x = 0.001:0.01:1;
plot(x,f(x)),grid
% express�o f'(x)
df = @(x) 1./x + 1;
% m�todo Newton-Raphson
x1 = 0.5;
ERel = inf;
k = 1;
kmax = 4;
tol = 0;
xant = x1;
[x, ERel, k] = newton_raphson_modificado(f, x1, tol, kmax)