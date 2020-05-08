% 3.31 - livro
f = @(i) P.*(1-(1+i).^(-n))-F.*i;
x = 0:0.01:0.5;
plot(x,f(x)),grid
axis([0 0.05 -1 1])
x1 = 0.5;
F = 2499;
P = 249;
n = 12;
tol = 0.5e-12;
kmax = 1000;
[x, ERel, k] = newton_raphson(f, x1, tol, kmax)