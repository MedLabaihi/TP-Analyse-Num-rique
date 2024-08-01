// Test TP VarA1 LUsolve
function [x]=LUsolve(A,b)
  [L,U]=LUdecomp(A)
  y = L\b
  x = U\y
endfunction
