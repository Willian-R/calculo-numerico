%exercício 5.21
clear,clc,close
t = [0 6 10 13 17 20 28]';
w = [6.67 17.33 42.67 37.33 30.10 29.31 28.74]';
plot(t,w,'*'),grid,hold on
%polinômio interpolador
n = length(t);
X = MVander(t,n-1);
c = SLGauss(X,w);
u = min(t):0.01:max(t);
v = VPol(c,u);
plot(u,v,'b')
%splines
vs = ISpline3(t,w,u);
plot(u,vs,'r')
hold off