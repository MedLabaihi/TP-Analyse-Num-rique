exec('Hilb.sci')
t=[3,6,10,20,50,100];
C=zeros(length(t),1); err=C;
for i=1:length(t)
  n = t(i);
  M = Hilb(n);
  C(i)=cond(M);
  b = M*ones(n,1);
  X = linsolve(M,-b);
  err(i)=norm(ones(n,1)-X)/norm(X);
end

subplot(2,1,1)
plot(t,C)
title('conditionnement')

subplot(2,1,2)
plot(t,err)
title('erreur relative')

