funcprot(0)

function [A]=MBand(a,b,c)
    n=length(a)
    if (length(b)~=length(c))|(length(b)~=(n-1)) then
        disp("Erreur: Vecteurs non identique!"), A=0, return
    end        
    A = diag(a)+diag(c,1)+diag(b,-1)
endfunction