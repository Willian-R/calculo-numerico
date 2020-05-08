%exercício da aula 2

% a) compara o valor exato pi com a aproximação 22/7
exato = pi
calc = 22/7
Erro = calc-exato
ERel = Erro/exato
compara_DSE = [exato;calc]

pause
% b) comparar o valor exato de cos(pi/6) = sqrt(3)/2
% com o valor calculado pela série que define cos(x),
% utilizando 5 termos
exato = sqrt(3)/2

n = 5;
x = pi/6;
s = 0;
for k = 0:n-1
    termo = (-1)^k*x^(2*k)/factorial(2*k);
    s = s + termo;
end
calc = s
Erro = calc-exato
ERel = Erro/exato
compara_DSE = [exato;calc]