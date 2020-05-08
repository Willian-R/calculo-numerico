%exercício 8.12
clear,clc,close,format short
F = @(t,u) -u;
a = 0;
b = 1;
ua = 1;
h = 0.01;
[t, u2] = EDORK2(F, a, b, ua, h)
plot(t, u2, 'xr'), grid, hold on
[t, u4] = EDORK4(F, a, b, ua, h)
plot(t, u4, 'og')

%exato
f = @(t) exp(-t);
plot(t,f(t),'-m')

legend('EDORK2','EDORK4','Exato')

%erro máximo
erro2 = max(abs(f(t)-u2))
erro4 = max(abs(f(t)-u4))