% exercício 8.13
F = @(t,u) 1-u/t;
a = 1;
b = 3;
ua = 5/2;
h = 0.02;
[t,u2] = EDORK2(F,a,b,ua,h)
plot(t,u2,'xr'),grid,hold on
[t,u4] = EDORK4(F,a,b,ua,h)
plot(t,u4,'ob')

%exato
f = @(t) t./2 + 2./t;
plot(t,f(t),'-g')

%erro máximo
erro2 = max(abs(f(t)-u2))
erro4 = max(abs(f(t)-u4))