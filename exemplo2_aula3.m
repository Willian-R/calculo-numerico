% exemplo 2 - aula 3

close, clear, format long
% fase 1 - localização do zero da f
f = @(x) 2*x.^3 + log(x) - 5;
x = 0:0.01:5;
plot(x,f(x)) , grid
%redimensionar os eixos:
axis([0 5 -20 20])

%fase 2 - refinamento com o método da bisseção
a = 1; b = 1.5;
tol = 0;
kmax = 10;
[x, ERel, k] = Bissecao(f, a, b, tol, kmax)