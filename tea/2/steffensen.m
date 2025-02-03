% Quadratic convergence without taking a derivative!
function res = steffensen(x0, f, tol, N)
    for _=1:N
        x1 = f(x0);
        x2 = f(x1);
        if (abs(x1-x2) < tol)
            res = x2;
            return;
        end%if
        x = x0 - (x1-x0)^2 / (x2 - 2*x1 + x0);
        if (abs(x-x2)<tol)
            res = x;
            return;
        end%if
        x0 = x;
    end%for
    res = -1;
    disp("Method failed");
end%function
