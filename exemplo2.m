clear,clc,close
x = [2 5 7 9]';
y = [-3 3 2 5]';
plot(x,y,'*'),grid,hold on

[c1,SQE1] = ajuste_pol(x,y,1)
u = min(x):0.01:max(x);
v = VPol(c1,u);
plot(u,v,'r')

[c2,SQE2] = ajuste_pol(x,y,2)
u = min(x):0.01:max(x);
v = VPol(c2,u);
plot(u,v,'b')

[c3,SQE3] = ajuste_pol(x,y,3)
u = min(x):0.01:max(x);
v = VPol(c3,u);
plot(u,v,'g')

legend('nodos','p1','p2','p3')