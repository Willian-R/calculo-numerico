f = @(z) 1/sqrt(2*pi)*exp(-0.5*z.^2)
z = -4:0.1:4;
d = f(z);
plot(z,d,'r--')
grid on
xlabel('valor da vari�vel aleat�ria')
ylabel('densidade de probabilidade')
title('Distribui��o normal padr�o')