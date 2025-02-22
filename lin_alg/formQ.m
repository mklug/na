% Builds the Q matrix from the W matrix computed by house.
function Q = formQ(W)

    [m,n] = size(W);
    Q = eye(m);
    for i=1:m
        for k=n:-1:1
            vk = W(k:m,k);
            Q(k:m,i) -= 2*vk*vk'*Q(k:m,i);
        end%for
    end%for
end%function
