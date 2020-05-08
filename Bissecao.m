function [x, ERel, k] = Bissecao(f, a, b, tol, kmax)
%Bissecao calcula uma aproxima��o para o zero da fun��o
% f(x), no intervalo [a,b] que deve conter uma solu��o.
% Aplica o m�todo das divis�es sucessivas para redefinir
% os intervalos em cada itera��o
ERel = inf;
k = 0;
xant = inf;
while ERel>=tol && k<kmax
    x = (a+b)/2;
    k = k + 1;
    ERel = abs((x-xant)/x);
    if f(a)*f(x)<0
        b = x;
    else
        a = x;
    end
    xant = x;
end

end

