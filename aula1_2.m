% procedimento para construção de gráficos de funções

% 1) declara a função
f = @(x) x.^2

% 2) declarar o vetor dominio - eixo x
x = -2:0.1:2;

% 3) calcular o vetor imagem - eixo y
y = f(x);

% 4) construir um gráfico, ligando os pontos (x,y)
plot(x,y)
grid