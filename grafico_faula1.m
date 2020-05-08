%procedimento para gerar um gr�fico

% 1) Declarar a fun��o
f = @(x) x.^2

% 2) Declarar o vetor dom�nio - eixo x
x = -2:0.001:2;

% 3) Calcular o vetor imagem - eixo y
y = f(x);

% 4) construir um gr�fico, ligando os pontos (x,y)
plot(x,y)