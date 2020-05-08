function [v] = ILagrange(x,y,u)
%ILagrange - O algoritmo ILAGRANGE sistematiza a interpolação 
%pelo método de Lagrange. Observe que, no algoritmo, u é vetor e, assim, 
%mais de um valor pode ser interpolado no mesmo processo.

%inicialização
n = length(x);
m = length(u);
v = zeros(m,1);

%interpolação
for k = 1:m
    s = 0;
    for i = 1:n
        p = y(i);
        for j = 1:n
            if j~=i
                p = p*(u(k)-x(j))/(x(i)-x(j));
            end
        end
        s = s+p;
    end
    v(k) = s;
end
end

