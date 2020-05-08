%exercício 5.2 - livro
clear,clc,close
x = [-1 1 2]';
y = [7 -1 1]';
n = length(x);
X = MVander(x,n-1);
c = SLGauss(X,y)