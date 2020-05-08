f = @(x) 3*cos(x) + exp((-2)*x) - x^2
kmax = 10000;
tol = 0.5e-6;
a = 0;
b = 2;
[x, ERel, k] = Bissecao(f, a, b, tol, kmax)