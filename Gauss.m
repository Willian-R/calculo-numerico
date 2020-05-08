function x = Gauss(A,b)
% GAUSS - fornece o vetor solu��o do sistema Ax = b, pelo m�todo da 
% elimina��o de Gauss.
% Pode ser aplicado em sistemas quadrados SPD

[n,p] = size(A);
if n~=p
    disp('Sistema n�o � quadrado')
    return
end

C =[A b];
%Fase 1 - escalanamento da matriz completa
C = escalonamento(C);

%Fase 2 - retrosubstitui��o
x = zeros(n,1);
for i=n:-1:1
    x(i) = (C(i,n+1) - C(i,1:n)*x)/C(i,i);
end
end

