% exercício 8.9
clear,clc,close,format short
F = @(t,u) (t^2)*(5-u);
a = 0;
b = 2;
ua = 0;
h = 0.025;
[t,u] = EDOEuler(F,a,b,ua,h)
plot(t,u,'xr'),grid,hold on
%exato
f = @(t) 5-5*exp((-t.^3)/3);
plot(t,f(t),'-b')
%erro
erro = max(abs(f(t)-u))