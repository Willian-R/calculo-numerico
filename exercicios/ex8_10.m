%exercício 8.10
clear,clc,close,format long
F = @(t,u) -5*u;
a = 0;
b = 5;
ua = 5;
% h1 = 0.5
h1 = 0.5;
[t1,u1] = EDOEuler(F,a,b,ua,h1)
% h2 = 0.4
h2 = 0.4;
[t2,u2] = EDOEuler(F,a,b,ua,h2)
% h3 = 0.3
h3 = 0.3;
[t3,u3] = EDOEuler(F,a,b,ua,h3)
% h4 = 0.2
h4 = 0.2;
[t4,u4] = EDOEuler(F,a,b,ua,h4)
% h5 = 0.1
h5 = 0.1;
[t5,u5] = EDOEuler(F,a,b,ua,h5)
% exata
f = @(t) 5*exp(-5*t);

