function res = iteration(x0, f, tol, N)
    for _=1:N
        x = f(x0);
        if (abs(x-x0) < tol)
            res = x0;
            return;
        end%if
        x0 = x;
    end%for
    res = -1;
    disp("Method failed");
end%function
