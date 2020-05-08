function [x, k] = BissecaoModificado(f, a, b, tol, kmax)
%BissecaoModificado calcula uma aproximação para o zero da função
% f(x), no intervalo [a,b] que deve conter uma solução.
% Aplica o método das divisões sucessivas para redefinir
% os intervalos em cada iteração
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

