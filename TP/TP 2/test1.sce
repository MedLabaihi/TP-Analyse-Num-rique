// Test TP VarA1 test1
funcprot(0)
exec('LUdecomp.sci')
exec('LUsolve.sci')

N=9;
A=2*eye(N,N)-diag(ones(N-1,1),-1)-diag(ones(N-1,1),1)
b=[10;zeros(N-1,1)]

[x]=LUsolve(A,b);
y = A\b;

disp([x,y],'x(sol) = ');
Er = norm(x-y);
disp(Er,'|err| = ');
