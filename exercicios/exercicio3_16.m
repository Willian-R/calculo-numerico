% 3.16 - livro
close, clear, clc
% gráfico
f = @(x) x.*cos(x.^2);
x = 1:0.01:2;
plot(x,f(x)), grid
% derivada
syms x
df = matlabFunction(diff(f(x)));
% método de Newton-Raphson
k = 1;
kmax = 4;
x1 = 1.2;
xant = x1;
tol = 0;
ERel = inf;
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