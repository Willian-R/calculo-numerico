%exercício 7.19
clear,clc,close
C = @(t) cos((pi/2)*t.^2);
a = 0;
b = 1;
tol = 0.5e-12;
kmax = 15;
[Q,Erel,k] = QuadNCAdapt(C,a,b,tol,kmax)