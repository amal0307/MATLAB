%graph using ezplot or fplot
syms x
f=sin(2*x)+cos(3*x)
figure(1)
fplot(f)
figure(2)
fplot(f,[0,3])