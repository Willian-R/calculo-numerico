function [c,SQE] = ajuste_pol(x,y,m)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
%matriz de planejamento
X = MVander(x,m);
A = X'*X;
b = X'*y;
c = Gauss(A,b);
%determina��o do res�duo quadr�tico
SQE = norm(X*c-y)^2;
end

