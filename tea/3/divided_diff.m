function F = divided_diff(x, y)

    N = length(x) - 1;
    for i=1:(N+1)
        F(i,1) = y(i);
    end%for

    for j=2:(N+1)
        for i=1:(N+2-j)
            F(i,j) = (F(i,j-1)-F(i+1,j-1)) / ...
                     (x(i) - x(i+j-1));
        end%for
    end%for

end%function
