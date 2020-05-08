clear,clc
A = [5 2 1; 2 5 2; 1 2 5];
b = [5;1;9];
kmax = 4;
tol = 0;
[x,ERel,k] = jacobi(A,b,tol,kmax)