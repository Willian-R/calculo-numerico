%roteiro para constru��o de gr�ficos
close
clear
%1) declarar a fun��o
g = @(x) 2.*x - x.^2 + 1./x
%2) vetor x
x = -5:0.01:5;
%3) vetor y
y = g(x);
%4) constru��o do gr�fico
plot(x,y)
grid
%se necess�rio, redimensionar os eixos usando:
%axis([XMIN XMAX YMIN YMAX])
axis([-5 5 -50 10])