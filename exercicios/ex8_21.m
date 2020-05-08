% exercício 8.21
clear,clc,close,format short
F = @(t,u) t^2*(5-u);
a = 0;
b = 2;
h = 0.25;
for i=0:6
    ua = i;
    [t,u] = EDORK4(F,a,b,ua,h);
    plot(t,u),grid,hold on
end