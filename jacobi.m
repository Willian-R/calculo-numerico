function [x,ERel,k] = jacobi(A,b,tol,kmax)
%JACOBI - resolve um sistema quadrado SPD na forma Ax = b
% pelo método iteratvo de Gauss-Jacobi, aplicando
% a fórmula recursiva x = Cx + d
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
while ERel>=tol && k<kmax
    xant = x;
    x = C*x+d;
    k = k + 1;
    ERel = norm(x-xant)/norm(x);
end
end