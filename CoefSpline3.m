function [C] = CoefSpline3(x,y)
%CoefSplines3 - O algoritmo determina os coeficientes do spline 
%cúbico (natural) interpolador a partir do conjunto de nodos x e y.

%determinação de h e p
n = length(x);
h = zeros(n-1,1);
p = zeros(n-1,1);
for k  = 1:n-1
    h(k) = x(k+1)-x(k);
    p(k) = (y(k+1)-y(k))/h(k);
end

%determinação de H,P e m
H = zeros(n,n);
P = zeros(n,1);
H(1,1) = 1;
P(1) = 0;
for k = 2:n-1
    H(k,k-1) = h(k-1);
    H(k,k) = 2*(h(k-1)+h(k));
    H(k,k+1) = h(k);
    P(k) = 6*(p(k)-p(k-1));
end
H(n,n) = 1;
P(n) = 0;
m = seidel(H,P,0.5e-12,100);

%determinação dos coeficientes
C = zeros(n-1,4);
for k = 1:n-1
    C(k,1) = (m(k+1)-m(k))/(6*h(k));
    C(k,2) = m(k)/2;
    C(k,3) = p(k)-((2*m(k)+m(k+1))*h(k))/6;
    C(k,4) = y(k);
end
end

