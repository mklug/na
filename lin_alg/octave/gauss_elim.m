% Implementation of LU decomposition computation 
% via Gaussian elimination.  
function [L,U] = gauss_elim(A)
    [m,~] = size(A);
    U = A;
    L = eye(m);
    for k=1:(m-1)
        for j=(k+1):m
            L(j,k) = U(j,k) / U(k,k);
            U(j,k:m) = U(j,k:m) - L(j,k) * U(k,k:m);
        end%for
    end%for
end%function
