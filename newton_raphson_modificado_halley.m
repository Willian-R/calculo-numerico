function [x, ERel, k] = newton_raphson_modificado_halley(f, x1, tol, kmax)
% MÉTODO NEWTON-RAPHSON-modificado-Halley
% calcula uma aproximação para o zero da f em [a,b]
% a partir de um inicializador x1.
% x1 deve ser escolhido no intervalo [a,b], ou seja, deve estar
% suficientemente próximo de z.

ERel = inf;
k = 1;
xant = x1;
syms x

%converte a função simbólica em função anônima
df = matlabFunction(diff(f(x)));

ddf = matlabFunction(diff(df(x)));

while ERel>=tol && k<kmax
    x = xant - (2*f(xant)*df(xant) / (2*df(xant)^2 - f(xant)*ddf(xant)));
    k = k + 1;
    ERel = abs((x-xant)/x);
    xant = x;
end
end

