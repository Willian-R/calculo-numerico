%exemplo 1 - M�todos diretos para resolu��o de sistemas lineares
clc
%m�todo de elimina��o de Gauss
% fase 1: escalonamento matriz completa
A = [2 -1 1 -3;
     1 2 -3 1;
     3 -2 2 -1; 
     5 0 0 3]

b = [14; 1; 6; -2]

C = [A b]

%considerando o piv� na posi��o (1,1)
%1� etapa:
j = 1;
for i = 2:4
    k = -C(i,j)/C(j,j);
    C(i,:) = C(i,:) + k*C(j,:);
end
C
%2� etapa:
j = 2;
for i = 3:4
    k = -C(i,j)/C(j,j);
    C(i,:) = C(i,:) + k*C(j,:);
end
C
%3� etapa:
j = 3;
for i = 4:4
    k = -C(i,j)/C(j,j);
    C(i,:) = C(i,:) + k*C(j,:);
end
C

%fase 2 - retrosubstitui��o
x = zeros(4,1)
x(4) = C(4,5)/C(4,4)
x(3) = (C(3,5) - C(3,4)*x(4))/C(3,3)
x(2) = (C(2,5) - C(2,1:4)*x)/C(2,2)
x(1) = (C(1,5) - C(1,1:4)*x)/C(1,1)