clear,clc
A = [2 0 0 -2 0 0 0 0;
    2 0 0 0 -2 0 0 0;
    7 4 4 -4 -12 -4 -1 -2;
    0 2 0 0 0 -2 0 0;
    0 2 0 0 0 0 0 -1;
    0 0 2 0 0 0 -2 0;
    0 0 1 -1 -3 -1 0 0;
    0 0 0 0 0 0 0 1]
b = [0;0;0;0;0;0;0;1];
[x] = SLGauss(A,b)