%roteiro para construção de gráficos
close
clear
%1) declarar a função
g = @(x) 2.*x - x.^2 + 1./x
%2) vetor x
x = -5:0.01:5;
%3) vetor y
y = g(x);
%4) construção do gráfico
plot(x,y)
grid
%se necessário, redimensionar os eixos usando:
%axis([XMIN XMAX YMIN YMAX])
axis([-5 5 -50 10])