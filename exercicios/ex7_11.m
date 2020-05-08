% exercício 7.11
clear,clc,close
f = @(x) ((x+1).^2).*((x-1).^2);
a = -1;
b = 1;
m = 6;
n = 1;
Q61 = NCotes_Composto(f,a,b,m,n)
m = 3;
n = 2;
Q32 = NCotes_Composto(f,a,b,m,n)
Dif_Rel = abs((Q61-Q32)/Q32)