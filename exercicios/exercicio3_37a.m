% exerc�cio 3.1 livro
clc
% desenhar o gr�fico
f = @(x) x.^2 - 53;
x = 0:0.01:10;
plot(x,f(x))
grid on

%m�todo da bisse��o
a = 0;
b = 10;
tol = 0.5e-12;
kmax = inf;
ERel = inf;
k = 0;
xant = inf;
while ERel>=tol && k<kmax
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