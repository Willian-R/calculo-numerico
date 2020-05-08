% exercício 8.19
clear,clc,close,format short
% dados do problema
A = 0.005; % 1/min
E = 0.530; %J/mol
R = 8.314; %J/mol.K
beta = 0.300; %K/min

F = @(T,alfa) (A/beta)*exp(-E/(R*T))*(1-alfa);
a = 300;
b = 500;
ua = 0.1; 
h = 1;
[t,u] = EDORK4(F,a,b,ua,h)
plot(t,u,'-r'),grid,hold on

for i=1:length(u)
    if u(i)>=0.9000 && u(i)<=0.9005
        T = t(i)
    end
end