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
kmax = 4;
while k<kmax
    x = (a+b)/2;
    k = k + 1;
    ERel = abs((x-xant)/x);
    %vetores coluna para tabela
    K(k,1)=k;
    A(k,1)=a;
    X(k,1)=x;
    B(k,1)=b;
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
T = table(K,A,B,X,fa,fx,fb,Erel)