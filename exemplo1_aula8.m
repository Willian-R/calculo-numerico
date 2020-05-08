%exemplo 1 - aula 8
%método de Gauss-jacobbi aplicado passo-a-passo
clear,clc,format short
A = [12 -1 -3; 1 -9 -2; 2 3 6];
b = [40;7;23];

% 1) determinar as matrizes de iteração de Jacobbi C e d:
n = 3;
C = zeros(n);
d = zeros(n,1);

% Matriz C
for i = 1:n
    for j = 1:n
        if i~=j
            C(i,j) = -A(i,j)/A(i,i);
        end
    end
end

% vetor d
for i = 1:n
    d(i) = b(i)/A(i,i);
end

% 2) escolher o vetor inicializador
x1 = ones(n,1)
% x1 pode ser alterado de acordo com o exercício/objetivo/

% 3) processo iterativo: x = Cx + d
x2 = C*x1 + d
x3 = C*x2 + d
x4 = C*x3 + d
x5 = C*x4 + d

% 4) calcular o erro relativo na última iteração
ERel = norm(x5-x4)/norm(x5)

% 5) calcular os resíduos na última iteração:
%resíduo absoluto:
ResAbs = norm(A*x5 - b)
%resíduo relativo
ResRel = norm(A*x5 - b)/norm(b)