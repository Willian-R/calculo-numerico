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
kmax = 4;
while k<kmax
    x = (a+b)/2;
    k = k + 1;
    ERel = abs((x-xant)/x);
    K(k,1) = k;
    A(k,1) = a;
    B(k,1) = b;
    X(k,1) = x;
    fa(k,1)= f(a);
    fx(k,1)= f(x);
    fb(k,1)= f(b);
    Erel(k,1)= ERel;
    if f(a)*f(x)<0
        b = x;
    else
        a = x;
    end
    xant = x;
end
T = table(K,A,B,X,fa,fx,fb,Erel)