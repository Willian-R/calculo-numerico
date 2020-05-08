%exercício 3 - aula 10
clear,clc,close,format long
t = [20:5:50]';
p = [0.9991 0.9985 0.9983 0.9982 0.9983 0.9985 0.9988]';
v = ISpline3(t,p,32.5)