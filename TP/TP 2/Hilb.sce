function [H]=Hilb(n)
    H=zeros(n,n)
    for i=1:n
        for j=1:n
            H(i,j)=1/(i+j-1)
        end
    end
endfunction

n=input('Donner la valeur de n :')
x=zeros(1,n); y=x; err=x;
for i=1:n
  x(i)=i;
  M = Hilb(i);
  y(i)=cond(M);
  b = M*ones(i,1);
  R = linsolve(M,-b);
  err(i)=norm(ones(i,1)-R)/norm(R);
end

subplot(2,1,1)
plot(x,err)
title('Erreur relative')

subplot(2,1,2)
plot(x,y)
title('Conditionnement')
