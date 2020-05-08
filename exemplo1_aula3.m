% exemplo 1 - aula 3

clear, close, format short
% fase 1: analisar o gráfico para encontrar intervalo
% que contém um zero da função
x = 0:0.01:1;
f = @(x) x.^2 - cos(x);
plot(x,f(x)), grid

% fase 2: processo iterativo - aplicar o método da bisseção
a = 0
b = 1
x1 = (a+b)/2
a = x1
x2 = (a+b)/2
a = x2
x3 = (a+b)/2
b = x3
x4 = (a+b)/2
a = x4
x5 = (a+b)/2

% calcular o resíduo da função
Res = abs(f(x5))

% erro relativo
ERel = abs((x4-x5)/x5) % diferença relativa

% análise gráfica
hold on
plot(x5,0,'*')