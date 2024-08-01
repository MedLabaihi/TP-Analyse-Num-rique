function [y]=Euler_Imp(h,y0,k,m)
    hk_2=h*k/2, y(1)=y0
    for n=1:m-1
        y(n+1)=(-(1+hk_2*y(n))+sqrt(1+4*hk_2*y(n)))/hk_2
    end
endfunction

function [y,iter]=Euler_Imp2(h,t0,y0,fonc,k,m,tol,Imax)
    t(1)=t0, y(1)=y0, iter(1)=0
    for n=1:m-1
        t(n+1)=t(n)+h, yn=y(n)
        zn=yn+h*fonc(t,yn), iter(n+1)=1
        while (abs(yn-zn)>tol & iter(n+1)<Imax) do
            yn=zn, zn=y(n)+h*fonc(t(n),(y(n)+zn)/2,k)
            iter(n+1)=iter(n+1)+1
        end
        y(n+1)=zn
    end
endfunction
