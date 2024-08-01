// Test TP VarE2 test2
funcprot(0)
exec('Fonction.sci');
exec('IntGauss.sci');
n1=10; n2=100; 

a = 0; b = 1; 
Int1 = IntGauss(a,b,n1,Fonct2);
Int2 = IntGauss(a,b,n2,Fonct2);
Int3 = intg(a,b,Fonct2);
Er1=abs(Int3-Int1); Er2=abs(Int3-Int2);
disp([Int1,Int2,Int3],'[Int1,Int2,Int3] = ');
disp([Er1,Er2],'[Er1,Er2] = ');

a = -1; b = 1; 
Int1 = IntGauss(a,b,n1,Fonct1);
Int2 = IntGauss(a,b,n2,Fonct1);
Int3 = intg(a,b,Fonct1);
Er1=abs(Int3-Int1); Er2=abs(Int3-Int2);
disp([Int1,Int2,Int3],'[Int1,Int2,Int3] = ');
disp([Er1,Er2],'[Er1,Er2] = ');

a = 0; b = 1;
Int1 = IntGauss(a,b,n1,Fonct3);
Int2 = IntGauss(a,b,n2,Fonct3);
Int3 = intg(a,b,Fonct3);
Er1=abs(Int3-Int1); Er2=abs(Int3-Int2);
disp([Int1,Int2,Int3],'[Int1,Int2,Int3] = ');
disp([Er1,Er2],'[Er1,Er2] = ');
