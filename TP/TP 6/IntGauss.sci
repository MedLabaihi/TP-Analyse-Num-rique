function [Int]=IntGauss(a,b,n,func)
  h=(b-a)/n; H = h/(2*sqrt(3));
  x  = [a+h/2:h:b-h/2]
  Int= h/2*sum(func(-H+x)+func(H+x))
endfunction






















function [Int1,n]=Int2Gauss(a,b,func,tol,Imax)
  Int0=0; Int1=1; n=1;
  while(abs(Int1-Int0)>tol & n<Imax ) do
      h=(b-a)/n; H = h/(2*sqrt(3)); 
      x  = [a+h/2:h:b-h/2]; Int0 = Int1;
      Int1= h/2*sum(func(-H+x)+func(H+x))
      n = n + 1
  end
endfunction

