% exercício 8.18
clear,clc,close,format short
% dados do problema
k = 1/1000;
n = 1000;
F = @(t,u) k*u*(n-u);
a = 0;
b = 20;
ua = 2;
h = 0.4;
[t,u] = EDORK4(F,a,b,ua,h);

% 1ª alternativa -  tabela para verificação da resposta
tabela = [t,u]

% 2ª alternativa - encontrar o nº de dias para o boato atingir 800 pessoas
for i = 1:length(u)
    if u(i)>=800 && u(i)<=800.5
        dias = t(i)
    end
end