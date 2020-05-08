function [x1,x2] = bask2(a,b,c)
%BASK fornece as raizes reais da equa��o de segundo grau
% na forma ax�+ bx + c = 0
D = b^2-4*a*c;
if D>0
    x1 = (-b+sqrt(D))/(2*a);
    x2 = (-b-sqrt(D))/(2*a);
elseif D == 0
    x1 = -b/(2*a);
    x2 = x1;
else
    disp('A equa��o n�o possui ra�z real')
    x1 = [];
    x2 = [];
end
end

