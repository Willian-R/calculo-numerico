%exercício 3.3 - livro
close,clear,clc
%gráfico
f = @(x) x+cos(x);
x = -1:0.01:1;
plot(x,f(x))
grid on

%bisseção
ERel = inf;
k = 0;
xant = inf;
a = -1;
b = 1;
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