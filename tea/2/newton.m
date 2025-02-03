function res = newton(g, g_der, x0, tol, N)
    for _=1:N
        x = x0 - g(x0) / g_der(x0);
        if (abs(x-x0) < tol)
            res = x;
            return;
        end%if
        x0 = x;
    end%for
    disp("Method failed.");
    res = -1;
end%function
