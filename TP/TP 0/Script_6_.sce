x = linspace(-2,2,80);
y = x.^2;
plot(x,y)

pause

z = 1-x.^2;
plot(x,z)

t = 2*x.^2;
plot(x,t)

pause

xdel()
plot(x,y,x,z,x,t)

legend("x^2","1-x^2","2*x^2");
xtitle("Courbes");

pause

xdel()
plot(x,y,"b--",x,z,"ro",x,t,"gx")
legend("x^2","1-x^2","2*x^2");
xtitle("Courbes");

pause
xdel()