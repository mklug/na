% Not an at all optimized implementation...
function res = simpson(f,a,b,n)
    res = 0.0;
    h = (b-a)/(n*2);
    x0 = a;
    for i=1:n
        res += (h/3) * (f(x0)+4*f(x0+h)+f(x0+2*h)); 
        x0 += 2*h;
    end%for
end%function
