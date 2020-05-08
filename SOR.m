function [x,ERel,k] = SOR(A,b,tol,kmax,omega)
%SOR - resolve um sistema quadrado SPD na forma Ax = b
% pelo método iteratvo de Gauss-Seidel modificado, aplicando
% a fórmula recursiva x = Cx + d
%calculando x(i) pela média ponderada. o valor de omega é entre 0 e 2.
% Utiliza como vetor inicializador x1 com elementos unitários.

[n,~] = size(A);
% 1) Determinar as matrizes C e d
C = zeros(n);
d = zeros(n,1);
for i = 1:n
    d(i) = b(i)/A(i,i);
    for j = 1:n
        if i~=j
            C(i,j) = -A(i,j)/A(i,i);
        end
    end
end
% 2) definir o inicializador:
x = ones(n,1);
% 3) processo iterativo:
k = 1;
ERel = inf;
x = ones(n,1);
while ERel>=tol && k<kmax
    k = k + 1;
    u = x;
    for i = 1:n
        x(i)=omega*(C(i,:)*x+d(i))+(1-omega)*u(i);
    end
    ERel = norm(x-u)/norm(x);
end
end