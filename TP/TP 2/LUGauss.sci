// Série 2 : TP d'Analyse Numérique SMA_S6
// Exercice 4 : Algorithme de Gauss

function [L,U,b]=LUGauss(A,b)
  [n,m] = size(A), p = size(b)
  if (n~=m)|(m~=p) then
    error('ce n''est pas une matrice carree'), return
  else
    for k = 1:n-1
      M = max(abs(A(k:n,k)))
      // recherche de l'indice associe au Max
      for r = k:n
        if M==abs(A(r,k)) then
          s = r
        end
      end
      if k~=s then
        //permutation des lignes k et s
        t = A(k,:), A(k,:) = A(s,:), A(s,:) = t
        q = b(k), b(k) = b(s), b(s) = q
      end
      if A(k,k)~=0 then
        for i = k+1:n
          lam = A(i,k)/A(k,k)
          A(i,k+1:n) = A(i,k+1:n)-lam*A(k,k+1:n)
          A(i,k) = lam
        end
      else
        error('la matrice n''est pas inversible'), return
      end
    end
    U = triu(A), L = tril(A)
    for i = 1:n, L(i,i) = 1, end
  end
endfunction