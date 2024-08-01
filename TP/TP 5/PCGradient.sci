// Test TP VarD2 PCGradient
function [x,iter]=PCGradient(A,b,C,tol,Imax,x0)
  iter=0; x = x0; r = b-A*x; M=inv(C); z = M*r; v = z;
  while (norm(r)>tol) & (iter<Imax) do
    e = z'*r;
    a = e/(v'*(A*v));
    x = x + a*v;
    r = r-a*(A*v); 
    z = M*r;
    v = z + ((r'*z)/e)*v;
    iter=iter+1;
  end
endfunction