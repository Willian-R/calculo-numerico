clear,clc
A = [43 -86 -16;
    23 -46 72;
    -32 30 58];
b = [-59;49;56];

%sem pivotamento
x = Gauss(A,b)
pause
%com pivotamento
[x] = SLGauss(A,b)