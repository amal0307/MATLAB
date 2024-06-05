syms x
y1=input('ENTER the upper curve as a function of x :');
y2=input('ENTER the lower curve as a function of x :');
t=solve(y1-y2);
t=double(t);
A=int(y1-y2,t(1),t(2));
D=[t(1)-0.2 t(2)+0.2];
ezl=fplot(y1,D);
set(ezl,'color','r')
hold on
ez2=fplot(y2,D);
set(ez2,'color','g')
xv= linspace(t(1),t(2));
y1v=subs(y1,x,xv);
y2v = subs(y2,x,xv);
x=[xv,xv];
y=[y1v,y2v];
fill(x,y,'b')