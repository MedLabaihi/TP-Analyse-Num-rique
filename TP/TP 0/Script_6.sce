x = linspace(-2,2,80);
y = x.^2;

z = 1-x.^2;

t = 2*x.^2;

xdel()
plot(x,y,"b-",x,z,"ro",x,t,"g*")
legend("x^2","1-x^2","2*x^2");
xtitle("Courbes");
