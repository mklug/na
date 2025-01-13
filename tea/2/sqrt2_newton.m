% g(x) = x^2 - 2
% Here we empirically observe the quadratic convergence 
% of Newton's method applied to this function.

f = @(x) x - (x^2 - 2)/(2*x);
x0 = 1.0;

for _=1:7

    % print absolute errors.
    abs(sqrt(2) - x0) / sqrt(2)
    x0 = f(x0);

end%for
