f = @(x) sin(x);
df_exact = @(x) cos(x);

for_diff = @(x, h) (f(x + h) - f(x)) / h;
cen_diff = @(x, h) (f(x+h) - f(x - h)) / (2*h);
bac_diff = @(x, h) (f(x) - f(x-h)) / h; 
for_diff_3 = @(x,h) (-3*f(x)+4*f(x+h)-f(x+2*h))/(2*h);

x = 0:0.1:2*pi;
h = 0.1;
dfdx_f = for_diff(x, h); % "Implicit expansion"
dfdx_c = cen_diff(x, h);
dfdx_b = bac_diff(x, h);
dfdx_f3 = for_diff_3(x, h);

plot(x, dfdx_f, 'b');
hold on;
plot(x, dfdx_c, 'g');
plot(x, dfdx_b, 'k');
plot(x, df_exact(x), 'r');
plot(x, dfdx_f3, 'c')

legend('forward',  'centered', 
       'backward', 'exact',
       '3 point forward')

hold off;
