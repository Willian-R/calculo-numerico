function C = escalonamento(C)
%ESCALONAMENTO - fornece a forma escalonada da matriz C

[n,~] = size(C);
for j = 1:n-1
    for i = j+1:n
        k = -C(i,j)/C(j,j);
        C(i,:) = C(i,:) + k*C(j,:);
    end
end
end
