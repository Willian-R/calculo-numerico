% exercício 8.8
clear,clc,close,format short
F = @(t,u) -3*u + 6*t + 5;
a = 0;
b = 1;
ua = 3;
h = 0.05;
[t,u] = EDOEuler(F,a,b,ua,h)
plot(t,u,'xr'),grid,hold on
% exato
f = @(t) 2*exp(-3*t)+2*t+1;
plot(t,f(t),'ob')
%erro máximo
erro = max(abs(f(t)-u))