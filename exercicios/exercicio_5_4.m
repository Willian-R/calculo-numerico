%exercício 5.4 - livro
close,clear,clc
x = [0.0 0.2 0.4 0.6 0.8 1.0]';
y = [1.0000 0.7773 0.5716 0.3961 0.2579 0.1573]';
n = length(x);
X = MVander(x,n-1);
c = SLGauss(X,y)
w = VPol(c,0.5)