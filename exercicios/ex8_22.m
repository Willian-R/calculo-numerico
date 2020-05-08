% exercício 8.22
clear,clc,close,format short
F = @(t,u) -3*u + 6*t + 5;
a = 0;
b = 1;
ua = 3;
% a) EULER
cont = 0.08;
p = 1;
while cont>=0.01
    [t,u] = EDOEuler(F,a,b,ua,cont);
    h(p) = cont;
    f = @(t) 2*exp(-3*t) + 2*t + 1;
    erro(p) = max(abs(f(t)-u));
    cont = cont/2;
    p = p + 1;
end
tabela = [h',erro']

% b) Runge-Kutta
cont = 0.08;
p = 1;
while cont>=0.01
    [t,u] = EDORK4(F,a,b,ua,cont);
    h(p) = cont;
    f = @(t) 2*exp(-3*t) + 2*t + 1;
    erro(p) = max(abs(f(t)-u));
    cont = cont/2;
    p = p + 1;
end
tabela = [h',erro']