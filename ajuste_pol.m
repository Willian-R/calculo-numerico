function [c,SQE] = ajuste_pol(x,y,m)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
%matriz de planejamento
X = MVander(x,m);
A = X'*X;
b = X'*y;
c = Gauss(A,b);
%determinação do resíduo quadrático
SQE = norm(X*c-y)^2;
end

