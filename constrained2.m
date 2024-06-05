%Amal M Raju
%23BPS1164
syms x y L
f=input('Enter function f(x,y):');
g=input('Enetr the cooonstraint g(x,y)');
F=f+L*g;
gradF=jacobian(F,[x,y]);
[L,x1,y1]=solve(g,gradF(1),gradF(2),'real',true);
x1=double(x1);
y1=double(y1);
xmx=max(x1);
xmn=min(x1);
ymx=min(y1);
ymn=min(y1);
range=[xmn-3 xmx+3 ymn-3 ymx+3];
ezmesh(f,range)
hold on;
grid on;
h=fplot(g,range);
set(h,'linewidth',2);
tmp=get(h,'contourMatrix');
xdt=tmp(1,2:end);
ydt=tmp(2,2:end);
zdt=double(subs(f,{x,y},{zdt,ydt}));
plot3(xdt,ydt,zdt,'-r','LineWidth',2);
axis(range);
for i=1:nume1(x1)
G(i)=subs(f,[x,y],[x1(i),y1(i)]);
plot3(x1(i),G(i),'*k','markersize',20);
end
title('Constrained Maxima/Minima')
%x=moeny for development, y=money for production 
%20*x^1.5*y=f(x,y), x=y-60000=g(x,y)/x+y-60=g(x,y)


