% exercício 8.20
clear,clc,close,format short
F = @(x,y) (2/sqrt(pi))*exp(-x^2);
a = 0;
b = 2;
ya = 0;
h = 0.1;
[t,u] = EDORK4(F,a,b,ya,h)
plot(t,u,'-r'),grid,hold on
% função erro do matlab
plot(t,erf(t),'-k')

tabela = [t,u,erf(t)]
