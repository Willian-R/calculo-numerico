close,clear,clc
R = 8.314;
A = 1.702;
B = 9.081e-3;
C = -2.164e-6;
n = 2;
Q = 20000;
Ti = 300;
f = @(Tf) Q - n.*R.*(A.*(Tf-Ti) + B./2.*(Tf.^2 - Ti.^2) + C./3.*(Tf.^3-Ti.^3));
Tf = 301:0.01:1000;
plot(Tf,f(Tf)),grid
% pelo gráfico o zero da função fica no intervalo [500,600]
x1 = 500;
tol = 0.5e-12;
kmax = 1000;
[x] = newton_raphson(f, x1, tol, kmax);
Tf = x