clear,clc, format long
A = [1 -0.25 -0.25 0; -0.25 1 0 -0.25; -0.25 0 1 -0.25; 0 -0.25 0 1]
b = [0;0;0.25;-0.25]
tol = 0.5e-9;
kmax = 100;
[x,ERel,k] = jacobi(A,b,tol,kmax)