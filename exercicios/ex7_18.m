%exercício 7.18 modificado
clear,clc
f = @(t) 1./sqrt(1-(0.5^2).*(sin(t)).^2);
a = 0;
b = pi/2;
tol = 0.5e-12;
kmax = 15;
m = 10;
n = 1;
QNCcomposto = NCotes_Composto(f,a,b,m,n)
h = (b-a)/9;
x = a:h:b;
y = f(x);
QSpline = IntegraSpline3(x,y)