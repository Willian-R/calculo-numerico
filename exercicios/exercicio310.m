% Exercício 3.10
clear, clc, close, format long
f = @(x) (exp(-x.^1))+((x.^2)-10);
x = 0:0.01:4;
plot(x, f(x)); grid;
a = 0; b = 4;
tol = 0.5e-12;
kmax = inf;
[x, ERel, k] = Bissecao(f, a, b, tol, kmax)