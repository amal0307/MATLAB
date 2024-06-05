syms x y L
f=input('enter function f(x):');
g=input('Enter constraint g(x):');
F=f+g*L;
gradF=jacobian(F,[x,y]);
[L,x1,y1]=solve(g,gradF(1),gradF(2),'Real',true);
x1=double(x1);
y1=double(y1);
xmin=min(x1);
xmax=max(x1);
ymin=min(y1);
ymax=max(y1);
range=[xmin-3 xmax+3 ymin-3 ymax+3];
ezmesh(f,range)
hold on;
grid on;
h=ezplot(g,range);
set(h,'LineWidth',2);
tmp=get(h,'contourMatrix');
xdt=tmp(1,2:end);
ydt=tmp(2,2:end);
zdt=double(subs(f,{x,y},{xdt,ydt}));
plot3(xdt,ydt,zdt,'-r','LineWidth',2);
axis(range);
for i=1:numel(x1)
    G(i)=subs(f,[x,y],[x1(i),y1(i)]);
    plot3(x1(i),y1(i),G(i),'*k','Markersize',20);
end
title('Constrained Maxima or Minima')

