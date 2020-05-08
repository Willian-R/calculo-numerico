function [Q,Erel,k] = QuadNCAdapt(f,a,b,tol,kmax)
%Fun��o Newton-Cotes adaptada

%inicializa��o
k = 0;
c = (a+b)/2;
fa = f(a);
fc = f(c);
fb = f(b);

%chamada inicial da fun��o recursiva
[Q,Erel,k] = QuadRec(f,a,c,b,fa,fc,fb,k,tol,kmax);
end

