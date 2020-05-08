%exercício 3.5 - livro
close,clear,clc
k = 0;
T = inf;
a = 1;
b = 2;
Tant = b-a;
limite = 0.5e-12*(b-a);
while T>limite
    T = Tant/2;
    k = k + 1;
    Tant = T;
end
k