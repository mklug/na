% Assumes the input is full rank.  
% Computes the reduced QR decomposition.  
function [Q,R] = modified_gs(A)

    [m,n] = size(A);
    Q = zeros(m,n);
    R = zeros(n,n);

    for i=1:n
        Q(:,i) = A(:,i);
    end%for
    
    for i=1:n
        R(i,i) = norm(Q(:,i));
        Q(:,i) /= R(i,i);
        for j=(i+1):n
            R(i,j) = dot(Q(:,i),Q(:,j));
            Q(:,j) -= R(i,j)*Q(:,i);
        end%for
    end%for
end%function
