function [ X ] = MVander( x,m )
%MVander - exercício 1.38
%algoritmo de Vander
%recebe um vetor x => x = [x1,x2,...xn]' e um nº inteiro positivo
%retorna uma matriz
clc
n = length(x);
X = zeros(n,m+1);
for i = 1:n
    X(i,m+1) = 1;
    for j = m:-1:1
        X(i,j)=x(i)*X(i,j+1);
    end
end
end

