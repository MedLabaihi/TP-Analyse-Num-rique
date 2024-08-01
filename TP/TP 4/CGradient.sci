// Test TP VarC1 CGradient
function [x,iter]=CGradient(A,b,tol,Imax,x0)
  x = x0; r = b-A*x; v = r; e = r'*r;
  for iter = 1:Imax
    a = e/(v'*(A*v));
    x = x + a*v;
    r = r-a*(A*v); 
    if (norm(r)<tol) then, return, end
    v = r + (r'*r)/e*v;
    e = r'*r;
  end
endfunction
