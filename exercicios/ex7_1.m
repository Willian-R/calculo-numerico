%exercício 7.1
close,clear,clc
f = @(x) exp(x);
a = -1;
b = 1;
n = 1;
Q1 = NCotes(f,a,b,n)
n = 2;
Q2 = NCotes(f,a,b,n)
n = 3;
Q3 = NCotes(f,a,b,n)
n = 4;
Q4 = NCotes(f,a,b,n)
exato = f(1)-f(-1)
Erel1 = abs((exato-Q1)/exato)
Erel2 = abs((exato-Q2)/exato)
Erel3 = abs((exato-Q3)/exato)
Erel4 = abs((exato-Q4)/exato)