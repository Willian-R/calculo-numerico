function [x, ERel, k] = Bissecao_Interpolacao(f, a, b, tol, kmax)
%Bissecao calcula uma aproximação para o zero da função
% f(x), no intervalo [a,b] que deve conter uma solução.
% Aplica o método das divisões sucessivas para redefinir
% os intervalos em cada iteração
ERel = inf;
k = 0;
xant = inf;
while ERel>=tol && k<kmax
    x = a-f(a)/(f(b)-f(a))*(b-a);
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

