% Assumes the input is full rank.  
% Computes the reduced QR decomposition.  
function [Q,R] = classic_gs(A)
    [m,n] = size(A);
    Q = zeros(m,n);
    R = zeros(n,n);

    for j=1:n
        Q(:,j) = A(:,j);
        for i=1:(j-1)
            R(i,j) = dot(Q(:,i), A(:,j));
            Q(:,j) -= R(i,j) * Q(:,i);
        end%for
        R(j,j) = norm(Q(:,j));
        Q(:,j) /= R(j,j);
    end%for
end%function
