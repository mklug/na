function res = aitken(ps)

    res = [];
    if (length(ps) < 3)
        return;
    end%if
    for n=1:(length(ps)-2)
        res = [res, ps(n) - ((ps(n+1)-ps(n))^2)/(ps(n+2)-2*ps(n+1)+ps(n))];
    end%for

end%function
