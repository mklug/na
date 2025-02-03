%f = @(x) sin(x);
%F = @(x) -cos(x);
f = @(x) exp(3*x) + sin(x) + x^3;
F = @(x) exp(3*x)/3 - cos(x) + (x^4)/4;

a = 0;
b = pi;
exact = F(b) - F(a);
n = 1:25;

trap_errors  = zeros(size(n)); 
simp_errors  = zeros(size(n));
gauss_errors = zeros(size(n));

for i=1:length(n)
    trap_errors(i)  = abs(exact- ...
                     trapezoidal(f,a,b,n(i)));
    simp_errors(i)  = abs(exact- ...
                     simpson(f,a,b,n(i)));
    gauss_errors(i) = abs(exact- ...
                     gauss_quad(f,a,b,n(i)));
end%for

semilogy(n, trap_errors, 'g');
hold on;
semilogy(n, simp_errors, 'b');
semilogy(n, gauss_errors, 'r');
%semilogy(n, 1 ./(n.^2), 'y');
%semilogy(n, 1 ./(n.^4), 'c');

legend('trapazoidal', 'simpson', 'Gaussian');
hold off;
