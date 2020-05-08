clear,clc
A = [2 -1; 1 2];
b = [2;6];
kmax = inf; tol = 0.5e-12;
[x,ERel,k] = jacobi(A,b,tol,kmax)
[x,ERel,k] = seidel(A,b,tol,kmax)
pause

clear,clc
A = [5 2 1; 2 5 2; 1 2 5];
b = [5;1;9];
kmax = inf; tol = 0.5e-12;
[x,ERel,k] = jacobi(A,b,tol,kmax)
[x,ERel,k] = seidel(A,b,tol,kmax)
pause

clear,clc
A = [20 5 1; -2 10 2; 1 4 10];
b = [32; -20; 14];
kmax = inf; tol = 0.5e-12;
[x,ERel,k] = jacobi(A,b,tol,kmax)
[x,ERel,k] = seidel(A,b,tol,kmax)
pause

clear,clc
A = [4 2 0 0;
    -1 4 2 0;
    0 -1 4 2;
    0 0 -1 4];
b = [0;9;0;4];
kmax = inf; tol = 0.5e-12;
[x,ERel,k] = jacobi(A,b,tol,kmax)
[x,ERel,k] = seidel(A,b,tol,kmax)