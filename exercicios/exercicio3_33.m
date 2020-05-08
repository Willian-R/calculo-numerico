% 3.33 - livro
clear,clc,format short
f = @(x) (x/5) + exp(-x) - 1;
x = 0:0.01:20;
plot(x,f(x)),grid
tol = 0.5e-12;
kmax = 1000;
x1 = 6;
[x] = newton_raphson(f, x1, tol, kmax)
lambmax = (6.6261e-34 * 2.9979e8) / (x * 1.3807e-23 * 3500) 