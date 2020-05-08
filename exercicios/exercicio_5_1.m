%exercício 5.1 - livro
clear,clc,close
x = [0 2 3]';
y = [2 4 2]';
n = length(x);
X = MVander(x,n-1)
c = SLGauss(X,y)