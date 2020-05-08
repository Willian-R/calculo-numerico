% exercício 3.15
clear,close,clc
% gráfico
f = @(x) x - cos(x);
x = -pi:0.01:pi;
plot(x,f(x)), grid
% derivada
df = @(x) sin(x) + 1;
% método Newton-Raphson
x1 = 1.0;
kmax = 4;
tol = 0;
ERel = inf;
xant = x1;
k = 1;
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