%procedimento para gerar um gráfico

% 1) Declarar a função
f = @(x) x.^2

% 2) Declarar o vetor domínio - eixo x
x = -2:0.001:2;

% 3) Calcular o vetor imagem - eixo y
y = f(x);

% 4) construir um gráfico, ligando os pontos (x,y)
plot(x,y)