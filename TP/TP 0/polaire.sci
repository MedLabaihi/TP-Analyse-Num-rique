 function [r,theta]=polaire(x,y)
     r = sqrt(x^2+y^2)
     theta = atan(y/x)
 endfunction