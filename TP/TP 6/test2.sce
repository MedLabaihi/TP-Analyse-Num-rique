// Test TP VarE2 test2
clear
funcprot(0)
exec('fonction.sci');
exec('IntGauss.sci');
a = 0; b = 1; tol = 10^(-8); Imax = 1000;

[Int1,iter1] = Int2Gauss(a,b,Fonct2,tol,Imax);

Int2 = intg(a,b,Fonct2);
Er1=abs(Int2-Int1);
disp([Int1,iter1,Int2],'[Int1,iter1,Int2] = ');
disp([Er1],'[Er1] = ');

