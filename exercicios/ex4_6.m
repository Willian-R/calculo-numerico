clear, clc
A = [2 3 5;
    2 3 -4;
    1 4 -1];
b = [1;-8;-8];

%sem pivotamento
x = Gauss(A,b)
%com pivotamento
pause
[x] = SLGauss(A,b)