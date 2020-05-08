% 3.35 - livro
close,clear,clc
R = 200;
L = 0.3;
C = 40e-6;
uo = 50;
alfa = 1/(2*R*C);
omegai = 1/sqrt(L*C);
omegad = sqrt(omegai^2 - alfa^2);
u = @(t) uo .* exp(-alfa.*t) .* cos(omegad.*t);
t = 0:0.001:1;
plot(t,u(t)),grid
axis([0 0.05 -30 50])
x1 = 0.005;
tol = 0.5e-12;
kmax = 1000;
[x] = newton_raphson(u, x1, tol, kmax);
t1 = x
x1 = 0.02;
[x] = newton_raphson(u, x1, tol, kmax);
t2 = x
x1 = 0.025;
[x] = newton_raphson(u, x1, tol, kmax);
t3 = x