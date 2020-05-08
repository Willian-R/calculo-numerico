function [a,b,SQE] = ajuste_exp(x,y)
%AJUSTE_EXP calcula os coeficientes a e b na função de ajuste exponencial
% da forma y = a*exp(bx) pelo método dos mínimos quadrados

z = log(y);
[c,~] = ajuste_pol(x,z,1);
a = exp(c(2));
b = c(1);
f = @(x) a*exp(b*x);
SQE = norm(f(x)-y)^2;
end

