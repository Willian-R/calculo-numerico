%5.21 - livro
close,clc,clear
t = [0 6 10 13 17 20 28]';
w = [6.67 17.33 42.67 37.33 30.10 29.31 28.74]';
plot(t,w,'*'),grid, hold on
%polinômio interpolador
n = length(t);
X = MVander(t,n-1);
c = SLGauss(X,w);
u = min(t):0.01:max(t);
v = VPol(c,u);
plot(u,v,'r')
%spline interpolador
v = ISpline3(t,w,u);
plot(u,v,'b')
hold off