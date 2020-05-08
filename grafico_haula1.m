%roteiro para construção de gráficos
close
clear
%1) declarar a função
h = @(x) cos(x) - 2.*x
%2) vetor x
x = -5:0.01:5;
%3) vetor y
y = h(x);
%4) construção do gráfico
plot(x,y)
grid
%se necessário, redimensionar os eixos usando:
%axis([XMIN XMAX YMIN YMAX])