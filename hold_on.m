%hold on function
x=linspace(0,1,100)
plot(x,x.^2,'r','LineWidth',2.0)
hold on
plot(x,cos(x),'g','LineWidth',2.0)
hold on
plot(x,sin(x),'b','LineWidth',2.0)
hold on
plot(x,exp(x),'c','LineWidth',2.0)
legend('x.^2','cos(x)','sin(x)','e.^x')