%7.26
clear,clc
D = 60;
C = 90;
h = 40;
f = @(x) sqrt(x.*(D-x));
a = 0;
b = h;
m = 100;
n = 4;
Q = NCotes_Composto(f,a,b,m,n)
V = 2*C*Q
exato = C*( (pi*D^2)/8 + (h - D/2) * sqrt(h*(D-h)) - (D^2)/4 * asin(1 - (2*h)/D) )
ERel = abs((V-exato)/exato)