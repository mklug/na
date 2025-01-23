function F = divided_diff(x, y)

    N = length(x);
    for i=1:N
        F(i,1) = y(i);
    end%for

    for j=2:N
        for i=1:(N+1-j)
            F(i,j) = (F(i,j-1)-F(i+1,j-1)) / ...
                     (x(i) - x(i+j-1));
        end%for
    end%for

end%function
