clear,clc
A = [2 -1; 1 2];
b = [2;6];
kmax = 4;
tol = 0;
[x,ERel,k] = jacobi(A,b,tol,kmax)