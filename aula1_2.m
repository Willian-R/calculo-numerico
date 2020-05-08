% procedimento para constru��o de gr�ficos de fun��es

% 1) declara a fun��o
f = @(x) x.^2

% 2) declarar o vetor dominio - eixo x
x = -2:0.1:2;

% 3) calcular o vetor imagem - eixo y
y = f(x);

% 4) construir um gr�fico, ligando os pontos (x,y)
plot(x,y)
grid