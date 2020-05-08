%exercício 3.2 - livro
close,clear,clc
%desenhar gráfico
f = @(x) sqrt(x.^2+1) - x.^2;
x = 0:0.01:3;
plot(x,f(x))
grid on

%método da bisseção
ERel = inf;
k = 0;
xant = inf;
a = 0;
b = 3;
kmax = inf;
tol = 0.5e-12;
while k<kmax && ERel>=tol
    x = a-f(a)/(f(b)-f(a))*(b-a);
    k = k + 1;
    ERel = abs((x-xant)/x);
    if f(a)*f(x)<0
        b = x;
    else
        a = x;
    end
    xant = x;
end
x,k