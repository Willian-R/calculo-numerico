function [C] = PivotamentoParcial(C,n,j)
%PIVOTAMENTO PARCIAL encontra o maior pivô para troca de linha
%inicialização
p = abs(C(j,j));
k = j;
%Busca pivô
for i = j+1:n
    if abs(C(i,j))> p
        p = abs(C(i,j));
        k = i;
    end
end
%Pivotamento impossível
if p == 0
    disp('Pivotamento impossível');
end
%Permutação das linhas j e k
if k > j
    T = C(j,:);
    C(j,:) = C(k,:);
    C(k,:) = T;
end


