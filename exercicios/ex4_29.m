clear,clc
disp('a')
A = [10 -1; -11 10];
b = [17;8];
tol = 0.5e-12;
kmax = inf;
disp('jacobi')
[x,ERel,k] = jacobi(A,b,tol,kmax)
disp('seidel')
[x,ERel,k] = seidel(A,b,tol,kmax)
pause
disp('b')
clear,clc
A = [1 0 1; 1 -1 0; 1 2 -3];
b = [6;3;9];
tol = 0.5e-12;
kmax = inf;
disp('jacobi')
[x,ERel,k] = jacobi(A,b,tol,kmax)
disp('seidel')
[x,ERel,k] = seidel(A,b,tol,kmax)