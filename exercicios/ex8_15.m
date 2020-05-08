% exercício 8.15
clear,clc,close,format short
F = @(t,u) t^2*(5-u);
a = 0;
b = 2;
ua = 0;
h = 0.10;
[t,u2] = EDORK2(F,a,b,ua,h)
plot(t,u2,'xr'),grid,hold on
[t,u4] = EDORK4(F,a,b,ua,h)
plot(t,u4,'ob')

% exato
f = @(t) 5 - 5*exp(-t.^3/3);
plot(t,f(t),'-k')

%erro
erro2 = max(abs(f(t)-u2))
erro4 = max(abs(f(t)-u4))