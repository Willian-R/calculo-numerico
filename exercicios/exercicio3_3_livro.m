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
kmax = 4;
while k<kmax
    x = (a+b)/2;
    k = k + 1;
    ERel = abs((x-xant)/x);
    K(k,1)=k;
    A(k,1)=a;
    X(k,1)=x;
    B(k,1)=b
    fa(k,1)=f(a);
    fx(k,1)=f(x);
    fb(k,1)=f(b);
    Erel(k,1)=ERel;
    if f(a)*f(x)<0
        b = x;
    else
        a = x;
    end
    xant = x;
end
T = table(K,A,X,B,fa,fx,fb,Erel)