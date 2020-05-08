%exercício 8.4
clear,clc,close,format short
F = @(t,u) t^2*(5-u);
a = 0;
b = 2;
ua = 0;
h = 0.25;
[t,u] = EDOEuler(F,a,b,ua,h)
plot(t,u,'xr'),grid,hold on
%exato
f = @(t) 5-5*exp(-t.^3./3);
plot(t,f(t),'ob')
%erro máximo
erro = max(abs(f(t)-u))