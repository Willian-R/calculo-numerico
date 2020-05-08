% exercicio 8.14
F = @(t,u) -3*u + 6*t + 5;
a = 0;
b = 1;
ua = 3;
h = 0.05;
[t,u2] = EDORK2(F,a,b,ua,h)
plot(t,u2,'xr'),grid,hold on
[t,u4] = EDORK4(F,a,b,ua,h)
plot(t,u4,'ob')

% exato
f = @(t) 2*exp(-3*t) + 2*t + 1;
plot(t,f(t),'-k')

%erro
erro2 = max(abs(f(t)-u2))
erro4 = max(abs(f(t)-u4))