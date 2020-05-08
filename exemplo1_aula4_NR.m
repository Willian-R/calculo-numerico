%retomar o exemplo 1 da aula passada, para comparar com o método
% de Newton-Raphson:

f = @(x) x^2 - cos(x)
df = @(x) 2*x + sin(x)
x1 = 0.5
x2 = x1 - f(x1)/df(x1)
x3 = x2 - f(x2)/df(x2)
x4 = x3 - f(x3)/df(x3)
x5 = x4 - f(x4)/df(x4)
ERel = abs((x5-x4)/x5)