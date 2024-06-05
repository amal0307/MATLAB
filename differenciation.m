%differenciation
syms x y
a=x.^2+2*x*y+y*sin(x)
diff(a,x)
diff(a,y)