% Compare the slopes of the errors on a log-log
% scale.  

f = @(x) sin(x);
dfdx = @(x) cos(x);

%f = @(x) 3*x^3 + x^2 - x + 1;
%dfdx = @(x) 9*x^2 + 2*x - 1;

%f = @(x) exp(x^2);
%dfdx = @(x) 2*x*exp(x^2);

cen_df = @(x, h) (f(x+h) - f(x-h)) / (2*h);
for_df = @(x, h) (f(x+h) - f(x))   / h;
bac_df = @(x, h) (f(x) - f(x-h))   / h;

%x0 = pi / 4;
x0 = 1.0;

h_values = logspace(-10, -1, 10);

dfdx_cen = zeros(size(h_values));
dfdx_for = zeros(size(h_values));
dfdx_bac = zeros(size(h_values));

for i = 1:length(h_values)
    h = h_values(i);
    dfdx_cen(i) = cen_df(x0, h);
    dfdx_for(i) = for_df(x0, h);
    dfdx_bac(i) = bac_df(x0, h);
end

exact = dfdx(x0);

loglog(h_values, abs(dfdx_cen - exact), 'b-o');
hold on;
loglog(h_values, abs(dfdx_for - exact), 'g-o');
loglog(h_values, abs(dfdx_bac - exact), 'r-o');

xlabel('h');
ylabel('Relative error');
legend('centered','forward','backward');
hold off;
