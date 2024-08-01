// test Var-G méthode d'Euler
funcprot(0)
exec('Fonctions.sci');
exec('Euler_Exp.sci');
exec('Euler_Imp.sci');

// k=input("donner le parametre de l''equation, k : ");
// y0=input("donner la condition initiale, y0 : ");
// [t0,T]=input("donner l''itervale, [t0,T] : ");
// N=input("donner le nombre de discritisation, N : ");
// tol=input("donner la precision souhaitee, tol : ");

k = 0.001;
t0 = 0.; y0 = 1.; 
T = 15000.;
N = 30;
h=(T-t0)/N; // h*k < 1
t=[t0:h:T]';

[y_exp]=Euler_Exp(h,t0,y0,fonc1,k,N+1);
y_exa=y_exact(t,t0,y0,k);
clf()
plot(t,y_exa,'b-',t,y_exp,'g*')
legend("exact","E-exp");
xtitle("Resolution de E.D. par Euler explicit");

pause
y_imp=Euler_Imp(h,y0,k,N+1);
clf()
plot(t,y_exa,'b-',t,y_exp,'g*',t,y_imp,'r.')
legend("exact","E-exp","E-imp");
xtitle("Resolution de E.D. par Euler explicite et implicite");

pause
Imax = 100; tol = 10^(-8);
[y_imp2,iter]=Euler_Imp2(h,t0,y0,fonc1,k,N+1,tol,Imax);
clf()
plot(t,y_exa,'b-',t,y_exp,'g*',t,y_imp,'r.',t,y_imp2,'y+')
legend("exact","E-exp","E-imp","E-imp2");
xtitle("Resolution de E.D. par Euler explicite et implicite");

disp([t,y_exa,y_exp,y_imp,y_imp2,iter],'Solution exacte et approchées : ');
