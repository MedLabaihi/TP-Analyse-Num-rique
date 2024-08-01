// Test TP VarD2 test2
funcprot(0)
exec('PCGradient.sci');
tol=10^(-15); Imax=60; n=50; 
A=(1+1)*eye(n,n)-diag(ones(n-1,1),-1)-diag(ones(n-1,1),1);
y = ones(n,1); b=A*y; x0=zeros(n,1);

I=eye(n,n);
[x1,iter1]=PCGradient(A,b,I,tol,Imax,x0);
Err1 = norm(x1-y)/norm(y); Res1=norm(b-A*x1); cond1=cond(A);

w=2/(1+sin(%pi/(2*n+2)))
D=diag(diag(A)); E=D-tril(A);
C=w/(2-w)*(D/w-E)*inv(D)*(D/w-E');
[x2,iter2]=PCGradient(A,b,C,tol,Imax,x0);
Err2 = norm(x2-y)/norm(y); Res2=norm(b-A*x2); cond2=cond(inv(C)*A);

[x3, flag, err, iter3, res] = pcg(A,b,tol,Imax,C);
Err3 = norm(x3-y)/norm(y); Res3=norm(b-A*x3);

disp([x1,x2,x3,y],'[x1,x2,x3,y] = ');
disp([iter1,iter2,iter3],'[iter1,iter2,iter3] = ');
disp([Err1,Err2,Err3],'[Err1,Err2,Err3] = ');
disp([Res1,Res2,Res3],'[Res1,Res2,Res3] = ');

Cond3=1/2*(1+1/sin(%pi/(2*n+2)))
disp([cond1,cond2,Cond3],'[cond(A),cond(C^-1*A),Cond3] = ');


