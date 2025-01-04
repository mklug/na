function ans = fib(N)
    if (N==0)
        ans = 0;
        return;
    elseif (N==1)
        ans = 1;
        return;
    end%if
    a = 0;
    b = 1;
    for _=1:N-1
        c = b;
        b = a+b;
        a = c;
    end%for
    ans = b;
end%function
