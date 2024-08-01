function [z]=fonc1(t,y,k)
    z = -k*y^2
endfunction


function [y]=y_exact(t,t0,y0,k)
    y = y0./(1+y0*k*(t-t0))
endfunction

