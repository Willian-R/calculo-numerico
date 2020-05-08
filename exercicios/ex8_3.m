%ex 8.3
clear,clc,close
F = @(t,u) -3*u + 6*t + 5;
a = 0;
b = 1;
ua = 3;
h = 0.2;
[t,u] = EDOEuler(F,a,b,ua,h)

erro = max(abs(f(t)-u))