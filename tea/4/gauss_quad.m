% 3 point Gauss quadrature integrator.
function res = gauss_quad(f,a,b,n)
    res = 0.0;
    h = (b-a)/(2*n);
    x0 = h;
    ch = sqrt(3/5)*h;
    for i=1:n
        res += (h/9)*(5*f(x0-ch)+8*f(x0)+5*f(x0+ch)); 
        x0 += 2*h;
    end%for
end%function
