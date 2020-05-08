% exercício 8.6
clear,clc,close,format short
F = @(t,u) -u;
a = 0;
b = 1;
ua = 1;
h = 0.01;
[t,u] = EDOEuler(F,a,b,ua,h)
plot(t,u,'xr'), grid, hold on
% exato
f = @(t) exp(-t);
plot(t,f(t),'ob')
% erro máximo
erro = max(abs(f(t)-u))