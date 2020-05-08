% Exemplo - aula 2
% Determinando erros e DSE?

format long
exato = exp(1)

% utilizando 6 termos da série:
x = 1 + 1 + 1/2 + 1/6 + 1/24 + 1/120

Erro = x - exato
ERel = Erro/exato

%para determinar DSE ==== digitos segnificativos exatos,
%podemos fazer a comparação entre os valor x e exato
compara = [x;exato]