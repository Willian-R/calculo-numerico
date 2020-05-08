clear,clc
A = [0 2 5 2; 2 0 0 3; 0 6 3 2; 3 0 2 0];
b = [1;2;3;4];
tol = 0.5e-12;
kmax = 1000;
[x] = SLGauss(A,b)