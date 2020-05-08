function Q = NCotes(f,a,b,n)
%  Newton-Codes calcula a quadratura numérica, pelo método de Newton-Codes,
%  de ordem n, aplicando a fórmula:
%Q=(b-a)*somatorio(wi*f(xi))
if n==0
    x0=(a+b)/2;
    Q=(b-a)*f(x0);
end

if n==1
    w=[1/2 1/2];
elseif n==2
    w=[1/6 4/6 1/6];
elseif n==3
    w=[1/8 3/8 3/8 1/8];
elseif n==4
    w=[7/90 32/90 12/90 32/90 7/90];
else
    disp('Reveja o valor de n!')
     Q=[];
     return
end
h=(b-a)/n;
x=[a:h:b]';
y=f(x);
Q=(b-a)*(w*y);
end

