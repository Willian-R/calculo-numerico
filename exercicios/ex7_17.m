%exercício 7.17
clear,clc,close
format long
f = @(t) exp(-t.^2);
a = 0;
b = 1;
tol = 0.5e-12;
kmax = 15;
[Q,Erel,k] = QuadNCAdapt(f,a,b,tol,kmax)
Q = (2/sqrt(pi)).*Q