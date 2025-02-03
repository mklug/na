function res = newton_eval(coefs, xs, xhat)
    
    res = 0.0;
    N = length(coefs);
    c = 1.0;
    for i=1:N
        res += coefs(i)*c;
        c *= (xhat-xs(i));
    end%for

end%function
