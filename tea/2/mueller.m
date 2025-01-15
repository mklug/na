function res = mueller(f, x0, x1, x2, N)

    for i=1:N

        Y0 = f(x0);
        Y1 = f(x1);
        Y2 = f(x2);

        c = Y2;

        del0 = Y0 - Y2;
        del1 = Y1 - Y2;
        h0 = x0 - x2;
        h1 = x1 - x2;
        h2 = x0 - x1;

        b = (h0^2 * del1 - h1^2 * del0) / (h0*h1*h2);
        a = (h1*del0 - h0*del1) / (h0*h1*h2);

        x0 = x1;
        x1 = x2;
        
        pos = b + sqrt(b^2 - 4*a*c);
        neg = b - sqrt(b^2 - 4*a*c);

        if (abs(pos) > abs(neg))
            x2  -= (2*c)/pos;
        else
            x2 -= (2*c)/neg;
        end%if

    end%for

    res = x2;

end%function
