% exercício 3.13 - livro
close, clear, clc, format short
% gráfico
f = @(x) x.^3 - 2*x - 5;
x = -3:0.01:3;
plot(x,f(x)), grid

% expressão da f'(x)
df = @(x) 3*x.^2 - 2;

% método newton-raphson
x1 = 2.5;
ERel = inf;
k = 1;
xant = x1;
tol = 0;
kmax = 4;
while ERel>=tol && k<=kmax
    K(k,1)= k;
    X(k,1)= xant;
    fx(k,1)= f(xant);
    dfx(k,1)= df(xant);
    Erel(k,1)= ERel;
    x = xant - f(xant)/df(xant);
    k = k + 1;
    ERel = abs((x-xant)/x);
    xant = x;
end
T = table(K,X,fx,dfx,Erel)