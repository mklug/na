function res = bisection(a,b,f,tol)

    N = ceil(log(b-a) - log(tol) / log(2));
    L = f(a);
    for i=1:N
        
        m = (b+a)/2;
        M = f(m);

        if (M == 0)
            res = m;
            return;
        end%if
        
        if (L*M < 0)
            b = m;
        else
            a = m;
            L = M;
        end%if

    end%for
    res = m;
end%function
