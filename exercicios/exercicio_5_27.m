%exercício 5.27 - livro
clear,clc,close
idade = [0:5:80]';
homem = [69.73 66.88 62.00 57.12 52.55 48.19 43.81 39.45 35.15 30.97 26.97 23.16 19.63 16.37 13.43 10.96 9.01]';
mulher = [77.32 74.01 69.09 64.16 59.29 54.46 49.66 44.90 40.22 35.66 31.25 27.00 22.97 19.19 15.71 12.63 10.06]';
v = ISpline3(idade,homem,22);
w = ISpline3(idade,mulher,48);
homem_idade = 22+v
mulher_idade = 48+w