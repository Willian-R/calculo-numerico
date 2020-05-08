function Q = IntegraSpline3(x,y)
%INTEGRASPLINE3 calcula uma aproximação para a integral pela técnica de
%splines cúbicos, em [a,b], onde x1 = a e xn = b

C = CoefSpline3(x,y);
a = C(:,1);
b = C(:,2);
c = C(:,3);
d = C(:,4);

n = length(x);
for i  = 1:n-1
    h(i) = x(i+1) - x(i);
    Q(i) = a(i)*h(i)^4/4 + b(i)*h(i)^3/3 + c(i)*h(i)^2/2 + d(i)*h(i);
end
Q = sum(Q);
end

