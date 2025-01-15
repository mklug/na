% sign(f(a)) != sign(f(b))
function res = bracket_secant(f,a,b,N,tol)
    A = f(a);
    B = f(b);
    for _=1:N

        c = b - (B * (a-b) / (A-B));
        C = f(c);
        _,a,b,c

        if (abs(C) < tol)
            res = c;
            return;
        end%if

        if (sign(A) == sign(C))
            a = c;
            A = C;
        else
            b = c;
            B = C;
        end%if
    end%for
    res = c;
end%function
