format('long')
f = @(x) sin(x);
f_der = @(x) cos(x);
f_der_approx = @(x,h) (f(x+h) - f(x-h)) / (2*h);
xhat = 1.0;

disp("Actual value:")
actual = f_der(xhat);
actual

hs = [1, 0.1, 0.01, 0.001, 0.0001, ...
      0.00001, 0.000001, 0.0000001, ...
      0.00000001];

for h = hs
    h
    approx = f_der_approx(xhat, h)
    abs_error = abs(actual - approx)
end%for
