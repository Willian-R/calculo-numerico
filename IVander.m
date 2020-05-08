function [c,v] = IVander(x,y,u)
%IVander congrega os métodos:
%MVander - para determinar o polinômio interpolador através de uma matriz
%SLGauss - fornece o vetor solução do sistema Ax = b, pelo método da 
% eliminação de Gauss.Pode ser aplicado em sistemas quadrados SPD
% VPOL - função que utiliza a função de Horner para avaliação polinomial

n = length(x);
X = MVander(x,n-1);
c = SLGauss(X,y);
v = VPol(c,u);
end

