function [L,U]=DecomposeLU(A)
  [n,m]=size(A)
  if n~=m then
    error("Matrice non carree !!!"), return
  end
  if abs(det(A))<=%eps then 
    error("Matrice non inversible !!!"), return
  end
  L=eye(n,n); U=zeros(n,n);
  for k=1:n
    U(k,k:n)=A(k,k:n)-L(k,1:k-1)*U(1:k-1,k:n)
    L((k+1):n,k)=(A((k+1):n,k)-L((k+1):n,1:(k-1))*U(1:(k-1),k))/U(k,k)
  end
endfunction
  