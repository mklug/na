% Overwrites A with the R factor of a QR decomposition.
% 
function [W,R] = house(A)
    [m,n] = size(A);
    W = zeros(m,n);

    for k=1:n
        x = A(k:m,k);

        s = sign(x(1));
        if (s==0)
            s = 1;
        end%if

        e1 = zeros(m-k+1,1);
        e1(1) = 1;

        vk = s*norm(x)*e1 + x;
        vk /= norm(vk);

        W(k:m,k) = vk;

        A(k:m,k:n) -= 2*vk*vk'*A(k:m,k:n);
    end%for
    R = A;
end%function
