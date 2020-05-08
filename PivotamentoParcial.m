function [C] = PivotamentoParcial(C,n,j)
%PIVOTAMENTO PARCIAL encontra o maior piv� para troca de linha
%inicializa��o
p = abs(C(j,j));
k = j;
%Busca piv�
for i = j+1:n
    if abs(C(i,j))> p
        p = abs(C(i,j));
        k = i;
    end
end
%Pivotamento imposs�vel
if p == 0
    disp('Pivotamento imposs�vel');
end
%Permuta��o das linhas j e k
if k > j
    T = C(j,:);
    C(j,:) = C(k,:);
    C(k,:) = T;
end


