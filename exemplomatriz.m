% Exemplo 3 - programa��o (aula 2)
clear
n = input('Digite a dimens�o da matriz quadrada = ');
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