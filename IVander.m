function [c,v] = IVander(x,y,u)
%IVander congrega os m�todos:
%MVander - para determinar o polin�mio interpolador atrav�s de uma matriz
%SLGauss - fornece o vetor solu��o do sistema Ax = b, pelo m�todo da 
% elimina��o de Gauss.Pode ser aplicado em sistemas quadrados SPD
% VPOL - fun��o que utiliza a fun��o de Horner para avalia��o polinomial

n = length(x);
X = MVander(x,n-1);
c = SLGauss(X,y);
v = VPol(c,u);
end

