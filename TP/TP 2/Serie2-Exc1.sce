exec('Hilb.sci')
t=[2:100];
C=zeros(length(t),1); err=C; i=0;
for n=t
  i=i+1;
  M = Hilb(n);
  C(i)=cond(M);
  b = M*ones(n,1);
  X = linsolve(M,-b);
  err(i)=norm(ones(n,1)-X)/norm(X);
end

disp(C,"Le conditionnement :")
disp(err,"L''erreur relative :")

subplot(2,1,1)
plot(t,C)
title('conditionnement')

subplot(2,1,2)
plot(t,err)
title('erreur relative')

