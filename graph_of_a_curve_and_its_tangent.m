%graph of a curve and its tangent line in the neighbourhood of D of a point
syms x
syms y
y=input('Enter function f in terms of x');
x1=input('Enter x value at which tangent x');
D=[x1-2 x1+2];
fplot(y,D)
hold on
yd = diff(y,x);
slope = subs(yd,x,x1);
y1 = subs(y,x,x1);
plot(x1,y1,'ko')
Tgtline = slope*(x-x1)+y1;
