clear,clc,format long

A = [1 0 0 0 0 0 0 0 0 0;
    0 3 -1 0 0 0 0 0 0 0;
    0 -2 3 -1 0 0 0 0 0 0;
    0 0 -2 3 -1 0 0 0 0 0;
    0 0 0 -2 3 -1 0 0 0 0;
    0 0 0 0 -2 3 -1 0 0 0;
    0 0 0 0 0 -2 3 -1 0 0;
    0 0 0 0 0 0 -2 3 -1 0;
    0 0 0 0 0 0 0 -2 3 0;
    0 0 0 0 0 0 0 0 0 1];
b = [2;4;0;0;0;0;0;0;8;8];
tol = 0.5e-12;
kmax = inf;
[x,ERel,k] = seidel(A,b,tol,kmax)