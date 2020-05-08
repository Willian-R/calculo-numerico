% Exemplo 5
clear,clc,close,format short
F = @(t,u) u^2/(1-u);
a = 2;
b = 4;
ua = -1;
h = 0.1;
[t,u] = EDORK4(F,a,b,ua,h)
plot(t,u,'x'),grid
u4 = u(length(u))