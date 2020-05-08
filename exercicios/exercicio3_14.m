% exercício 3.14 - livro
close,clear,clc
% gráfico
f = @(x) x + log(x);
x = 0.001:0.01:1;
plot(x,f(x)),grid
% expressão f'(x)
df = @(x) 1./x + 1;
% método Newton-Raphson
x1 = 0.5;
ERel = inf;
k = 1;
kmax = 4;
tol = 0;
xant = x1;
while ERel>=tol && k<=kmax
    K(k,1) = k;
    X(k,1) = xant;
    fx(k,1) = f(xant);
    dfx(k,1) = df(xant);
    Erel(k,1) = ERel;
    x = xant - f(xant)/df(xant);
    k = k + 1;
    ERel = abs((x-xant)/x);
    xant = x;
end
T = table(K,X,fx,dfx,Erel)