// Test TP VarB1 Relaxation
function [x,iter]=Relax(A,b,w,tol,Imax,x0)
  D = diag(diag(A)); M=(1-w)*(D)/w + tril(A);
  x = x0; r=b-A*x;
  for iter=0:Imax
    y=M\r; 
    x=x+y;
    r=r-A*y; 
    if (norm(r)<tol) then, return, end
  end
endfunction
