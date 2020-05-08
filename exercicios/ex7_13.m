%exercício 7.13
clear,close,clc

f = @(x) exp(x);
a = -1;
b = 1;
n = 2;
exato = f(b)-f(a)

m = 1;
Q12 = NCotes_Composto(f,a,b,m,n)
m = 2;
Q22 = NCotes_Composto(f,a,b,m,n)
m = 4;
Q42 = NCotes_Composto(f,a,b,m,n)
m = 8;
Q82 = NCotes_Composto(f,a,b,m,n)

tm1 = (exato - Q12)/(exato-Q22)
tm2 = (exato - Q22)/(exato-Q42)
tm3 = (exato - Q42)/(exato-Q82)