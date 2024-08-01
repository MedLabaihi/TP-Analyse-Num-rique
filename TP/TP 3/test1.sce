// Test TP VarB1 test1
funcprot(0)
exec('Relaxation.sci')
n=10;
A=4*eye(n,n)-diag(ones(n-1,1),-1)-diag(ones(n-1,1),1);
b=A*ones(n,1); x0=zeros(n,1); tol=10^(-7); Imax=100; y = A\b;
w1=1.0;
[x1,iter1]=Relax(A,b,w1,tol,Imax,x0); Er1 = norm(x1-y);
w2=1.065299;
[x2,iter2]=Relax(A,b,w2,tol,Imax,x0); Er2 = norm(x2-y);
w3=1.1;
[x3,iter3]=Relax(A,b,w3,tol,Imax,x0); Er3 = norm(x3-y);
disp([x1,x2,x3,y],'[x1,x2,x3,y] = ');
disp([iter1,iter2,iter3],'[iter1,iter2,iter3] = ');
disp([Er1,Er2,Er3],'[Er1,Er2,Er3] = ');
//la matrice de l'iteration de Jacobi est :
D = diag(diag(A)); J=eye(A)-inv(D)*A;
//Comparaison avec la valeur wopt
rho=max(spec(J)); wopt=2/(1+sqrt(1-rho^2));
disp(wopt,' w optimal = ')
