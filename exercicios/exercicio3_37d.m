%exercício 3.4 - livro
%desenhar gráfico
f = @(x) exp((-x))+x.^2-10;
x = 2:0.01:4;
plot(x,f(x))
grid on

%método bisseção
ERel = inf;
k = 0;
xant = inf;
a = 2;
b = 4;
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