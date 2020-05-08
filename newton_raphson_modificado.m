function [x, ERel, k] = newton_raphson_modificado(f, x1, tol, kmax)
% M�TODO NEWTON-RAPHSON MODIFICADO
% calcula uma aproxima��o para o zero da f em [a,b]
% a partir de um inicializador x1.
% x1 deve ser escolhido no intervalo [a,b], ou seja, deve estar
% suficientemente pr�ximo de z.
% novo crit�rio de para f(xant)>tol e k<kmax
ERel = inf;
k = 1;
xant = x1;
syms x

%converte a fun��o simb�lica em fun��o an�nima
df = matlabFunction(diff(f(x)));

while abs(f(xant))>tol && k<kmax
    x = xant - f(xant)/df(xant);
    k = k + 1;
    ERel = abs((x-xant)/x);
    xant = x;
end
end

