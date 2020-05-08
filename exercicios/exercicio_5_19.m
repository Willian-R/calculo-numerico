% exercício 5.19 - livro
clear,close,clc
%a)
p = [51 55 58 60]';
e = [607 704 795 864]';
C = CoefSpline3(p,e)
%b)
b = ISpline3(p,e,57)