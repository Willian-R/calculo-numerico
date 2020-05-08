%exercício 7.17
clear,clc,format long
f = @(t) exp(-t.^2);
a = 0;
b = 1;
tol = 0.5e-12;
kmax = 15;
[Q,Erel,k] = QuadNCAdapt(f,a,b,tol,kmax)
resultado = (2/sqrt(pi))*Q
compara = [resultado erf(1)]