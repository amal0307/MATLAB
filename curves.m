%plotting x^3,sin(x) and exp(x) graphs respectively 
x=linspace(0,1,101);
plot(x,x.^3,'r+',x,sin(x),'g-',x,exp(x),'b.')