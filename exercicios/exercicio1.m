%exercicio 1 - aula 10
clear,clc,close,format long
t = [20:5:50]';
p = [0.9991 0.9985 0.9983 0.9982 0.9983 0.9985 0.9988]';
plot(t,p,'*'),grid,hold on

%calcular os coeficientes do polinomio interpolador - Método Vandermonde
n = length(t);
X = MVander(t,n-1);
c = Gauss(X,p)
p32_5 = VPol(c,32.5)

%gráfico de p(x)
u = min(t):0.01:max(t);
v = VPol(c,u);
plot(u,v,'b')
hold off

%declara p(x) como função anônima
p = matlabFunction(poly2sym(c));
f = @(x) p(x)-0.9984;
tol = 0.5e-9;
kmax = 100;
[t1, ERel, k] = Bissecao(f, 25, 30, tol, kmax)
[t2, ERel, k] = Bissecao(f, 40, 45, tol, kmax)