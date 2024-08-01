function [L,U]=DecomposeLU(A)
  [n,m]=size(A)
  if n~=m then
    error("Matrice non carree !!!"), return
  end
  L=eye(n,n); U=zeros(n,n);
  for k=1:n
    for j=k:n
      U(k,j)=A(k,j)
      for i=1:(k-1)
        U(k,j)=U(k,j)-L(k,i)*U(i,j)
      end
    end
    for i=(k+1):n
      L(i,k)=A(i,k)
      for j=1:(k-1)
        L(i,k)=L(i,k)-L(i,j)*U(j,k)
      end
      if abs(U(k,k))<=%eps then 
        error("Matrice non inversible !!!"), return
      end
      L(i,k)=L(i,k)/U(k,k)
    end
  end
endfunction

  