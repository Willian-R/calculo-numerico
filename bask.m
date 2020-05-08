function [x1,x2] = bask(a,b,c)
%BASK fornece as raizes da equa��o de segundo grau
% na forma ax�+ bx + c = 0
D = b^2-4*a*c;
x1 = (-b+sqrt(D))/(2*a);
x2 = (-b-sqrt(D))/(2*a);
end

