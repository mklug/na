function P = neville(xhat, x, y)

    N = length(x);
    for i=1:N
        P(i,1) = y(i);
    end%for

    for j=2:N
        for i=1:N+1-j
            P(i,j) = ((xhat-x(i+j-1))*P(i,j-1)-(xhat-x(i))*P(i+1,j-1))/(x(i)-x(i+j-1));
        end%for
    end%for

end%function
