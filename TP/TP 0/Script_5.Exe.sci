// Initiation à Scilab

// Script_5.3

function [y]=H(x)
  if x<=0. then 
    y=0.
  else 
    y=1.
  end
endfunction

function [m]=Minimum(v)
  m = v(1);
  for i=1:length(v)
    if m>v(i) then m = v(i), end
  end
endfunction

function [u]=Syracuse(u,n)
  for i=1:n
    if int(i/2)~=(i/2) then u = 3*u+1, end
  end
endfunction

function [A]=BMatrice(a,b,c)
  n=length(a)
  if (length(b)~=length(c))|(length(b)~=(n-1)) then
    disp("Vecteurs non identique!"), A=0, return
  end  
  A=diag(a)+diag(b,-1)+diag(c,1)
endfunction

