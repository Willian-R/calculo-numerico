%ex8.1 - livro
clear,clc,close,format short
F = @(t,u) -u;
a = 0;
b = 1;
ua = 1;
h = 0.2;
[t,u] = EDOEuler(F,a,b,ua,h)
plot(t,u,'xr'),grid, hold on
f = @(t) exp(-t);
plot(t,f(t),'ob')
erro = max(abs(f(t)-u))