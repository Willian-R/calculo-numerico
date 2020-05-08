% 3.30 - livro
close, clear, clc
% a) gráfico
f = @(x) exp(x) - log(x);
x = 0.001:0.001:2;
plot(x,f(x)), grid

% b)determinar f'(x) = 0
syms x
g = matlabFunction(diff(f(x)));
x1 = 2;
tol = 0.5e-6;
kmax = 1000;
[x, ERel, k] = newton_raphson(g, x1, tol, kmax)