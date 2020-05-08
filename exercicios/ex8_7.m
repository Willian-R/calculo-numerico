% exerc�cio 8.7
clear,clc,close,format short
F = @(t,u) 1-u/t;
a = 1;
b = 3;
ua = 5/2;
h = 0.02;
[t,u] = EDOEuler(F,a,b,ua,h)
plot(t,u,'xr'),grid,hold on
% exato
f = @(t) t./2 + 2./t;
plot(t,f(t),'ob')
% erro m�ximo
erro = max(abs(f(t)-u))