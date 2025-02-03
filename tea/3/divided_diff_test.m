format('long')

x = 0:0.01:1;
F = divided_diff(x, exp(x));
xhat = 0.567;

disp("Approximation from divided differences:")
newton_eval(F(1,:), x, xhat)

disp("Exact value:")
exp(xhat)
