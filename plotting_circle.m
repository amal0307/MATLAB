%plotting circle
syms r a b
r=input('Enter radius')
a=input('Enter x coordinate')
b=input('Enter y coordinate')
t=linspace(0,2*pi*100)
x=a+r*cos(t)
y=b+r*sin(t)
plot(x,y)
axis equal
xlabel('X-coordinate')
ylabel('y-coordinate')
title('(x-a).^2+(y-b).^2=r.^2)')