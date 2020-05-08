%exemplo 4
clear,clc,close
V = [1.5 2.0 2.5 3.0 3.5 4.0 4.5]';
P = [80 72 64 53 44 31 22]';
plot(V,P,'*'),grid,hold on
u = min(V):0.001:max(V);
y = ISpline3(V,P,u);
plot(u,y,'r')
axis([1.5 4.5 0 80])

%calculando a integral por splines cúbicos
Q = IntegraSpline3(V,P)