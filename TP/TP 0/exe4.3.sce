 funcprot(0)
 deff('[z]=fon(x,y)','z=sin(x^2-y^2)')
 

 function [x1,x2]=resout2d(a,b,c)
     delt = b^2-4*a*c
     x1 = (-b+sqrt(delt))/(2*a)
     x2 = (-b-sqrt(delt))/(2*a) 
 endfunction
 
 