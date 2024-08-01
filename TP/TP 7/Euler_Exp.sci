function [y]=Euler_Exp(h,t0,y0,fonc,k,m)
    t(1)=t0, y(1)=y0
    for n=1:m-1
        y(n+1)=y(n)+h*fonc(t(n),y(n),k)
        t(n+1)=t(n)+h
    end
endfunction
