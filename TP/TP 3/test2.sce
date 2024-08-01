// Test TP VarB1 test1
funcprot(0)
exec('Relaxation.sci');
n=10;
A=4*eye(n,n)-diag(ones(n-1,1),-1)-diag(ones(n-1,1),1);
b=A*ones(n,1); x0=zeros(n,1); 
tol=10^(-7); Imax=1000; y = A\b;
t = [0.1:0.1:1.9]';
iter=zeros(length(t),1); Err=iter;
for i=1:length(t)
    w = t(i);
    [x,iter(i)]=Relax(A,b,w,tol,Imax,x0); 
    Err(i) = norm(x-y);
end

disp([t,iter,Err],'[w,iter,Err] = ');

subplot(2,1,1)
plot(t,iter)
title('Iteration')

subplot(2,1,2)
plot(t,Err)
title('Erreur')
