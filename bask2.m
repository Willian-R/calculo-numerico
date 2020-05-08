function [x1,x2] = bask2(a,b,c)
%BASK fornece as raizes reais da equação de segundo grau
% na forma ax²+ bx + c = 0
D = b^2-4*a*c;
if D>0
    x1 = (-b+sqrt(D))/(2*a);
    x2 = (-b-sqrt(D))/(2*a);
elseif D == 0
    x1 = -b/(2*a);
    x2 = x1;
else
    disp('A equação não possui raíz real')
    x1 = [];
    x2 = [];
end
end

