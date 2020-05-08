function [v] = ISpline3(x,y,u)
%O algoritmo ISPLINE3 determina as ordenadas v para um conjunto de valores 
%u usando a interpolação por spline cúbico natural a um conjunto de nodos 
%x e y.

%determina coeficientes
C = CoefSpline3(x,y);
%interpolação
n = length(x);
r = length(u);
v = zeros(r,1);
for i = 1:r
    %determina intervalo
    k = 1;
    while u(i)>x(k+1)&&k<n-1
        k = k+1;
    end
   %determina ordenada
   t = u(i)-x(k);
   v(i) = ((C(k,1)*t + C(k,2))*t + C(k,3))*t + C(k,4);
end
end

