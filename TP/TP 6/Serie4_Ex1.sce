funcprot(0)
exec('Fonction.sci');
exec('IntGauss.sci');
f = input("Donner le nom de la fonction fi :");
a = input("Donner les bornes [a,b] :");
n = [10:100:1010]';
Iexact = intg(a(1),a(2),f);
for i=1:length(n)
    pas = (a(2)-a(1))/n(i);
    logPas(i) = -log10(pas);
    I(i) = IntGauss(a(1),a(2),n(i),f);
    Er(i) = abs(I(i)-Iexact);
    logEr(i) = -log10(Er(i));
    disp(exp(logEr(i)-4*logPas(i)))
end
disp(Er(i),'err. : ',I(i),'val. approchee :')
disp(exp(logEr(i)-4*logPas(i)),'Const. assymtodique :')
clf()
plot(logPas,logEr,'r*')
