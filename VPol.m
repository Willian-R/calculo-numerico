function [ y ] = VPol(c,x)
%VPol - função que utiliza a função de Horner
%para avaliação polinomial
%entrada => vetor c com coeficientes e valor de x
%exercício 1.36
n = length(c);
y = 0;
for i = 1:n
    y = y.*x + c(i);
end
end

