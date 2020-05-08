function [t,u] = EDOEuler(F,a,b,ua,h)
% EDOEuler - resolve numericamente a equação diferencial u' = F(t,u), no
% intervalo [a,b], com valor inicial ua = u(a) e passo(variação) h.
% erro máximo - max(abs(exato-método)) - max(abs(f(t)-u))

t = [a:h:b]';
n = length(t)-1;
u = zeros(n+1,1);
u(1) = ua;
for i = 1:n
    u(i+1) = u(i) + F(t(i),u(i))*h;
end
end

