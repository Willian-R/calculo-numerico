%exercício 7.16
f = @(x) sqrt(1+(cos(x)).^2);
a = 0;
b = pi;
tol = 0.5e-12;
kmax = 15;
[Q,Erel,k] = QuadNCAdapt(f,a,b,tol,kmax)