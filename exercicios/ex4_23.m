clear,clc
A = [4 2 0 0;
    -1 4 2 0;
    0 -1 4 2;
    0 0 -1 4];
b = [0;9;0;4];
tol = 0; kmax = 4;
[x,ERel,k,C,d] = seidel(A,b,tol,kmax)