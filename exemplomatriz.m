% Exemplo 3 - programação (aula 2)
clear
n = input('Digite a dimensão da matriz quadrada = ');
A = zeros(n);
for i = 1:n
    for j = 1:n
        if i == j
            A(i,j) = 2*i+4*j;
        elseif i<j
            A(i,j) = 2;
        end
    end
end
A