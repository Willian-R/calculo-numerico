function Q = Newton_Cotes(f,a,b,n)
%  Newton-Codes calcula a quadratura numérica, pelo método de Newton-Codes,
%  de ordem n, aplicando a fórmula:
%Q=(b-a)*somatorio(wi*f(xi))
if n==0
    x0=(a+b)/2;
    Q=(b-a)*f(x0);
end

if n==1
    w=[1/2 1/2]
elseif n==2
    w=[1/6 4/6 1/6]
elseif n==3
    w=[1/8 3/8 3/8 1/8]
elseif n==4
    w=[7/90 32/90 12/90 32/90 7/90]
else
    disp('Reveja o valor de n!')
     Q=[];
     return
end
h=(b-a)/n;
x=[a:h:b]';
y=f(x);
Q=(b-a)*(w*y)
end

%Exercício 8.18
close, clc, clear, format short
F=@(t,u)(0.001*(u.*(1000-u)))
a=0;
b=15;
ua=2;
h=0.1;
[t,u] = EDO_RK4(F,a,b,ua,h)
plot (t,u,'or'), grid, hold on
for i=1:length(u)
    if u(i)>=800
        break
    end
end
plot(t,u,'*')
hold on
plot(t(i),u(i),'or')
disp('O boato atingirá 800 pessoas em (dias):')
disp(t(i))

%Exercício 8.19
close, clc, clear, format short
A=0.005;
E=0.53;
R=8.314;
Beta=0.3;

F=@(t,u)(A/Beta)*(exp(-E/(R*t)))*(1-u)
a=300; b=500;
h=2;
ua=0.1;
[t,u] = EDO_RK4(F,a,b,ua,h)
for i=1:length(u)
    if u(i)>=0.9
        break
    end
end
plot(t,u,'*r'), grid, hold on
plot(t(i),u(i),'og')
disp('A temperatura para alfa=0.90')
disp(t(i))

%Exercício 8.20
close, clc, clear, format short
F=@(t,u)(2./sqrt(pi))*(exp(-t.^2))
ua=0
a=0
b=2
h=0.1
[t,u] = EDO_RK4(F,a,b,ua,h)
plot(t,u,'*'),grid on, hold on
plot(t,erf(t),'r')
[t u erf(t)]
%exato
exato=erf(0)
erro=max(abs(erf(t)-u))

%Exercício 8.21
close, clc, clear, format short
F= @(t,u) (t^2)*(5-u)
a=0;
b=2;
h=0.25
ua=0
[t,u] = EDO_RK4(F,a,b,ua,h)
plot(t,u,'r')
hold on

ua=1
[t,u] = EDO_RK4(F,a,b,ua,h)
plot(t,u,'r')
hold on

ua=2
[t,u] = EDO_RK4(F,a,b,ua,h)
plot(t,u,'r')
hold on

ua=3
[t,u] = EDO_RK4(F,a,b,ua,h)
plot(t,u,'r')
hold on

ua=4
[t,u] = EDO_RK4(F,a,b,ua,h)
plot(t,u,'r')
hold on

ua=5
[t,u] = EDO_RK4(F,a,b,ua,h)
plot(t,u,'r')
hold on

ua=6
[t,u] = EDO_RK4(F,a,b,ua,h)
plot(t,u,'r')
hold on

%Todas essas famílias de soluções tem tendencia a u=5


%Exercício 8.22
close, clc, clear, format short
%Letra A
F= @(t,u) (-3*u)+(6*t)+5
a=0;
b=1;
ua=3;
h=[0.08 0.04 0.02 0.01]'
for i=1:4
    aux=h(i)
    [t, u ] = EDO_Euler( F, a, b, aux, ua), grid on, hold on
    
    %Exato
    f=@(x) 2*exp(-3*t) + 2*t +1
    %Calculando o Erro Absoluto
    erro(i)=max(abs(f(t)-u))
end
[h erro']

%Exercício 8.22
close, clc, clear
%Letra B
F=@(t,u) -3.*u + 6.*t +5
a=0
b=1
ua=3
h=[0.08 0.04 0.02 0.01]'
for i=1:4
    aux=h(i)
    [t,u] = EDO_RK4(F,a,b,ua,aux)
   
    %Exato
    f=@(x) 2*exp(-3*t) + 2*t +1
    %Calculando o Erro Absoluto
    erro(i)=max(abs(f(t)-u))
end
format long
[h erro']

%Exercício 1- Trabalho 3
clc, clear, close all, format short

%Letra a)
syms x
f=@(x)211.5-20.97*cosh(x./30.38)
df=matlabFunction(diff(f(x)));   
a=-91.21;
b=91.21;
F=@(x)sqrt(1+(-(2097*sinh((50.*x)/1519))/3038).^2)
m=10;
n=4; 
S = Newton_Cotes_Composto(F,a,b,m,n)
%S=451.39 metros

%Letra b)
%10 equiespaços ((91.21+91.21)/10)=18.2412
x=[-91.21:18.242:91.21];
s=@(x)sqrt(1+(-(2097*sinh((50.*x)/1519))/3038).^2)
y=s(x)
Q = QuadSpline( x,y)
%Q=453,48 metros

%Exercício 2- Trabalho 3
clc, clear, close all, format short

%Letra a)
a=40;
b=15;
A=0.5*pi*a*b
f=@(x)x.*(sqrt(1-((x.^2)/(a^2))))
m=10;
n=4;
a=0;
b=40;
Q = Newton_Cotes_Composto(f,a,b,m,n)
My=2*15*Q
%Q = 532.6930
%My =  1.5981e+04
Xc=My/A
%X=16,9561

%Letra b
%(532.6930*2)/81 or (5332,6930+532,6930)/81
a=40;
b=15;
A=0.5*pi*a*(b/2)
f=@(x)x.*(sqrt(1-((x.^2)/(a^2))))
%x=[532.6930:13.1529:532.6930];
h=(b-a)/80
x=[a:h:b]'
y=f(x)
Q = QuadSpline( x,y)
My=2*15*Q
Xc=My./A

%Exercício 3- Trabalho 3
clc, clear, close all, format short
F=@(t,u)((2/t)*u)+((t^2)*exp(t));
f=@(t)(t.^2).*(exp(t)-exp(1))
a=1;
b=2;
ua=0;
h=0.025;
[t,u] = EDO_Euler(F,a,b,ua,h)
disp('Método de Euler')
[t u]
ErroEULER=max(abs(f(t)-u))
plot(t,u,'ob'), grid on, hold on

[t,u] = EDO_RK4(F,a,b,ua,h)
disp('%Método de Range-Kutta 4')
[t u]
ErroKUTA=max(abs(f(t)-u))
plot(t,u,'*r')
plot(t,f(t),'g')
legend('Euler','RK4','Exato')

%Exercício 4- Trabalho 3
clc, clear, close all, format short
R=50;
C=1000e-6;
%Letra a)
vs=12;
F=@(t,u) ((1./(R*C))*vs)-((1/(R*C)))*u
ua=0
a=0;
b=0.02
h=0.001
[t,u] = EDO_Euler(F,a,b,ua,h)
tabela=[t u]

%Letra b)
R=50;
C=1000e-6;
F=@(t,u) (1./(R*C))*(12*sin(2.6*pi*t))-(1/(R*C))*u
ua=0
a=0;
b=0.02
h=0.001
[t,u] = EDO_Euler(F,a,b,ua,h)
tabela=[t u]
plot(t,u,'ob'), grid on, hold on


%MÉTODO UTILIZADO:EDO_EULER
%Passo utilizado: 0.001
%Tensão final em a)= 3,9887
%Tensão final em b)= 3,9887

%Exercício 5- Trabalho 3
clc, clear, close all, format long
g=9.81;
c=3;
a=1.5;
b=4;
r=0.025;
F=@(t,u)(sqrt(2*g.*u)*r.^2)/(a*c*(-1+(u-c).^2/c.^2));
a=0;
b=43000;
ua=5.9;
h=1;
[t,u] = EDO_RK4(F,a,b,ua,h)
plot(t,u), grid on, hold on

Dif=abs(u-0.1);
[a b]=min(Dif); %a=menor diferença e b=posição da menor diferença no vetor
tempo=t(b) 
altura=u(b)

%Exercício 6- Trabalho 3
clc, clear, close all, format short

%Letra a)

F=@(t,u)-((0.25/(300*0.003*900))*(5.67e-8*0.8*((u.^4)-(298^4))+(30.*(u-298))))
ua=673;
a=0;
b=180;
h=1;

[t,u] = EDO_RK4(F,a,b,ua,h)
plot(t,u,'ob'), grid on, hold on
[t u]
%Método escolhido:RK4
%Passo utilizado:h=1
%Temperatura da chapa no final do período de observação:338.6198 K
%Em algum momento, a temperatura atinge 400 K? Em caso positivo, indique
%quando isso ocorre. 98s
%Explique o procedimento adotado para resolução do último item:Foi montado uma tabela indicando os valores e observou-se que a temperatura era atingida entre 94 e 95 segundos o gráfico auxilia na localização do ponto.
