function [ y ] = VPol(c,x)
%VPol - fun��o que utiliza a fun��o de Horner
%para avalia��o polinomial
%entrada => vetor c com coeficientes e valor de x
%exerc�cio 1.36
n = length(c);
y = 0;
for i = 1:n
    y = y.*x + c(i);
end
end

