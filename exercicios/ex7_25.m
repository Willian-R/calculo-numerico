% exercício 7.25
clear,clc,close
H = 60;
L = 175;
f = @(x) H.*(1-((4.*x.^2)./(L.^2)));
x = -10:0.01:10;
y = f(x);
plot(x,y),grid
syms x
flinha = diff(H.*(1-((4.*x.^2)./(L.^2))));
flinha = matlabFunction(flinha);
S = @(x) sqrt(1 + flinha(x).^2);
a = -L*2;
b = L*2;
m = 30;
n = 4;
Q = NCotes_Composto(f,a,b,m,n)