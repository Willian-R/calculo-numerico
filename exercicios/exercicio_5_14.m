%5.14 - livro
x = [2 3 5 7]';
y = [2 5 6 8]';
C = CoefSpline3(x,y)
u = [2.5 6.0];
v = ISpline3(x,y,u)