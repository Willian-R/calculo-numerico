function [t,u] = EDORK4(F,a,b,ua,h)
% EDORK2 - resolve numericamente a equação diferencial u' = F(t,u), no
% intervalo [a,b], com valor inicial ua = u(a) e passo(variação) h.

t = [a:h:b]';
n = length(t)-1;
u = zeros(n+1,1);
u(1) = ua;
for i = 1:n
    k1 = F(t(i),u(i));
    k2 = F(t(i)+h/2, u(i)+k1*h/2);
    k3 = F(t(i)+h/2, u(i)+k2*h/2);
    k4 = F(t(i)+h,u(i)+k3*h);
    u(i+1) = u(i) + 1/6*(k1+2*k2+2*k3+k4)*h;
end
end

