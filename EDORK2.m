function [t,u] = EDORK2(F,a,b,ua,h)
% EDORK2 - resolve numericamente a equação diferencial u' = F(t,u), no
% intervalo [a,b], com valor inicial ua = u(a) e passo(variação) h.

t = [a:h:b]';
n = length(t)-1;
u = zeros(n+1,1);
u(1) = ua;
for i = 1:n
    k1 = F(t(i),u(i));
    k2 = F(t(i)+h, u(i)+k1*h);
    u(i+1) = u(i) + h*(1/2*k1 + 1/2*k2);
end
end

