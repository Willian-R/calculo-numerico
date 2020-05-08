function [x, k] = BissecaoModificado(f, a, b, tol, kmax)
%BissecaoModificado calcula uma aproxima��o para o zero da fun��o
% f(x), no intervalo [a,b] que deve conter uma solu��o.
% Aplica o m�todo das divis�es sucessivas para redefinir
% os intervalos em cada itera��o
x = inf;
k = 0;
while f(x)>=tol && k<kmax
    x = (a+b)/2;
    k = k + 1;
    if f(a)*f(x)<0
        b = x;
    else
        a = x;
    end
end

end

