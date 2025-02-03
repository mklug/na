% Looking at how many intervals are needed to 
% approximate the integral of exp(-x^2) from
% 0 to 3.

% Modify the 'tol' parameter to speed thing up. 
% e.g., tol = 10e-8

exact_erf = @(x) (sqrt(pi) / 2) * erf(x);
a = 0;
b = 3;
exact = exact_erf(b);

f = @(x) exp(-(x^2));

% number of intervals.
n = 2;
estimate = trapezoidal(f,a,b,n);

ns = [];
error = 10e-2;
tol = 10e-12;

while (error>tol)
    while (abs(estimate-exact)<error && error>tol)
        error /= 10;
        ns = [ns, n];
    end%while
    n += 1;
    estimate = trapezoidal(f,a,b,n);
end%while

ns

