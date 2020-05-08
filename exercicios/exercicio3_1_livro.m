% exercício 3.1 livro
clc
% desenhar o gráfico
f = @(x) x.^2 - 53;
x = 0:0.01:10;
plot(x,f(x))
grid on

%método da bisseção
a = 0;
b = 10;
tol = 0;
kmax = 4;
ERel = inf;
k = 0;
xant = inf;
while ERel>=tol && k<kmax
    x = (a+b)/2;
    k = k + 1;
    ERel = abs((x-xant)/x);
    K(1,k) = k;
    A(1,k) = a;
    X(1,k) = x;
    B(1,k) = b;
    Fa(1,k) = f(a);
    Fx(1,k) = f(x);
    Fb(1,k) = f(b);
    Erel(1,k) = ERel;
    if f(a)*f(x)<0
        b = x;
    else
        a = x;
    end
    xant = x;
end
K = K';
A = A';
X = X';
B = B';
Fa = Fa';
Fx = Fx';
Fb = Fb';
Erel = Erel';
T = table(K,A,X,B,Fa,Fx,Fb,Erel)