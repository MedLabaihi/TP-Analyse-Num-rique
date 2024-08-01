// Serie 1 Excercice 5

A1=[2.00000,6.00000;2.00000,6.00001]
b1=[8.00001;8.00001]
x1=A1\b1;
disp(cond(A1),'Conditionement de A1')
disp(norm(A1,1)*norm(inv(A1),1),'Conditionement de A1 en norme 1')
disp(norm(A1,'inf')*norm(inv(A1),'inf'),'Conditionement de A1 en norme Inf')
disp(x1,'Solution de A1*x=b1 :')
disp(x1,'Solution de A1*x=b1 :')

A2=A1+[0,0;0,-2.E-05]
b2=b1+[0;+1.E-05]
x2=A2\b2;
disp(cond(A2),'Conditionement de A2')
disp(x2,'Solution de A2*x=b2 :')

disp(norm(inv(A1)*(A2-A1)),'||A1^(-1)(A2-A1)||')
disp(norm(x2-x1)/norm(x1),'||dx||/||x||')
