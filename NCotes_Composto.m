function Q = NCotes_Composto(f,a,b,m,n)

H=(b-a)/m;

for i=1:m
    b=a+H;
    Q(i)= NCotes(f,a,b,n);
    a=b;
end

Q=sum(Q);
end

