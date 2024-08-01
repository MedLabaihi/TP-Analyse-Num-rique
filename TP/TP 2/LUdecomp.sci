// Test TP VarA1 LU Décomposition
function [L,U]=LUdecomp(A)
    [n,m] = size(A); 
    if n~=m then
        error("Matrice non carree !!!"), return
    end
    if abs(det(A))<=%eps then 
        error("Matrice non inversible !!!"), return
    end
    L = zeros(n,n)
    for k=1:n-1
        L(k+1:n,k) = A(k+1:n,k)/A(k,k)
        A(k+1:n,k+1:n) = A(k+1:n,k+1:n)-L(k+1:n,k)*A(k,k+1:n)
    end
    U = triu(A)
    for i=1:n L(i,i)=1, end
endfunction
