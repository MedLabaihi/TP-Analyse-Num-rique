// Test TP VarC1 test1
funcprot(0)
exec('CGradient.sci');
tol=10^(-6); Imax=70;
n=10;
A=2*eye(n,n)-diag(ones(n-1,1),-1)-diag(ones(n-1,1),1);
b=A*ones(n,1); x0=zeros(n,1); y1 = A\b;
[x1,iter1]=CGradient(A,b,tol,Imax,x0);
Er1 = norm(x1-y1);

n=20;
A=2*eye(n,n)-diag(ones(n-1,1),-1)-diag(ones(n-1,1),1);
b=A*ones(n,1); x0=zeros(n,1); y2 = A\b;
[x2,iter2]=CGradient(A,b,tol,Imax,x0);
Er2 = norm(x2-y2);

disp([x1,y1],'[x1,y1] = ');
disp([x2,y2],'[x2,y2] = ');
disp([iter1,iter2],'[iter1,iter2] = ');
disp([Er1,Er2],'[Er1,Er2] = ');
