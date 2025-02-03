function res = adapt_trap(f,a,b,tol)
    I1 = trapezoidal(f,a,b,1);
    I2 = trapezoidal(f,a,b,2);
    if (abs(I1-I2)<3*tol)
        res = I2;
        return;
    end%if
    m = (b+a)/2;
    A = adapt_trap(f,a,m,tol/2);
    B = adapt_trap(f,m,b,tol/2);
    res = A+B;
    return;
end%function
