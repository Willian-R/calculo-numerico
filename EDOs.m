function [t,u] = EDOs(F,a,b,ua,h)
% EDOs - é uma função que junta todos os tr~es métodos para resolução de
% EDO. Chamando as funções correspondentes

disp('1 - EDOEuler');
disp('2 - EDORK2');
disp('3 - EDORK4');
w = input('Escolha o método desejado: ');

while w<1 || w>3
    disp('Esta opção não existe.');
    w = input('Escolha o método desejado: ');
end

if w == 1
    [t,u] = EDOEuler(F,a,b,ua,h);
elseif w == 2
    [t,u] = EDORK2(F,a,b,ua,h);
else
    [t,u] = EDORK4(F,a,b,ua,h);
end

end

