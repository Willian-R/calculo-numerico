%exercício 2 - aula 10
clear,clc,close,format long
t = [20:5:50]';
p = [0.9991 0.9985 0.9983 0.9982 0.9983 0.9985 0.9988]';

%Lagrange com dois nodos
x = [30 35]';
y = [0.9983 0.9982]';
v1 = ILagrange(x,y,32.5)

%Lagrange com quatro nodos
x = [25 30 35 40]';
y = [0.9985 0.9983 0.9982 0.9983]';
v2 = ILagrange(x,y,32.5)