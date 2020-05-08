% exemplo 6
clear,clc,close
F = @(t,u) u*t - t.^3;
a = 0;
b = 1.8;
ua = 1;
h = 0.1;
[t,u] = EDOEuler(F,a,b,ua,h)
plot(t,u,'xr'),grid, hold on
% forma exata
f = @(x) x.^2 - exp(x.^2/2) + 2;
plot(t,f(t))
% erro EDOEuler
erro = max(abs(f(t)-u))
% EDORK2
[t,u2] = EDORK2(F,a,b,ua,h)
erro2 = max(abs(f(t)-u2))
plot(t,u2,'ob')
% EDORK4
[t,u3] = EDORK4(F,a,b,ua,h)
erro3 = max(abs(f(t)-u3))
plot(t,u3,'xg')