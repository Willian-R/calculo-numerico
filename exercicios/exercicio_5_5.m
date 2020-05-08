%exercicio 5.5 - livro
clear,clc,close
x = [-1 0 2 4 7]';
y = [0 3 3 -5 -32]';
plot(x,y,'o'),grid, hold on
n = length(x);
X = MVander(x,n-1);
c = SLGauss(X,y)
u = min(x):0.01:max(x);
v = VPol(c,u);
plot(u,v,'r')
hold off