function [x] = SLGauss(A,b)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
[n,p] = size(A);
if n~=p
    disp('Sistema não é quadrado')
    return
end
%inicialização
C = [A b];
%escalonamento
for j = 1:n-1
    C = PivotamentoParcial(C,n,j);
    for i = j+1:n
        m = -C(i,j)/C(j,j);
        C(i,:) = C(i,:)+m*C(j,:);
    end
end
%retrossubstituição
x = zeros(n,1);
for i = n:-1:1
    x(i) = (C(i,n+1) - C(i,1:n)*x)/C(i,i);
end
end

