%exercício 7.2
clear,clc,close
f = @(x) 1./x;
a = 1;
b = exp(1);
n = 1;
Q1 = NCotes(f,a,b,n)
n = 2;
Q2 = NCotes(f,a,b,n)
n = 3;
Q3 = NCotes(f,a,b,n)
n = 4;
Q4 = NCotes(f,a,b,n)
exato = -(b)^-2 + (a)^-2
ERel1 = abs((exato - Q1)/exato)
ERel2 = abs((exato - Q2)/exato)
ERel3 = abs((exato - Q3)/exato)
ERel4 = abs((exato - Q4)/exato)