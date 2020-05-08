clear,clc
A = [20 5 1; -2 10 2; 1 4 10];
b = [32; -20; 14];
tol = 0;
kmax = 4;
[x,ERel,k,C,d] = jacobi(A,b,tol,kmax)