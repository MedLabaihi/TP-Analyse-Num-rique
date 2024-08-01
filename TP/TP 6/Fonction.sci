function [y]=Fonct2(t)
    y = sqrt(t)
endfunction

function [y]=Fonct1(t)
    x = sqrt(1+t^2)
    y = 1 ./ x
endfunction

function [y]=Fonct3(t)
    y = 1+t+t^2+t^3
endfunction
