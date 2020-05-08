%exercício 7.9
clear,close,clc
f = @(x) 1./x;
a = 1;
b = exp(1);
m = 6;
n = 1;
Qa = NCotes_Composto(f,a,b,m,n)
m = 3;
n = 2;
Qb = NCotes_Composto(f,a,b,m,n)
Dif_Rel = abs((Qa-Qb)/Qb)