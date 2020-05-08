function [t,u] = EDOs(F,a,b,ua,h)
% EDOs - � uma fun��o que junta todos os tr~es m�todos para resolu��o de
% EDO. Chamando as fun��es correspondentes

disp('1 - EDOEuler');
disp('2 - EDORK2');
disp('3 - EDORK4');
w = input('Escolha o m�todo desejado: ');

while w<1 || w>3
    disp('Esta op��o n�o existe.');
    w = input('Escolha o m�todo desejado: ');
end

if w == 1
    [t,u] = EDOEuler(F,a,b,ua,h);
elseif w == 2
    [t,u] = EDORK2(F,a,b,ua,h);
else
    [t,u] = EDORK4(F,a,b,ua,h);
end

end

