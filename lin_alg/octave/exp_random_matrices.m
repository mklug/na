% Exercise 12.3

m = 100;

N = 1000;
norms = [];
conds = [];
lambdas = [];
re = [];
im = [];
for _=1:N
    A = randn(m,m) / sqrt(m);
    lambda = eig(A);
    lambdas = [lambdas, lambda'];
    norms = [norms, norm(A)];
    conds = [conds, cond(A)];
    % Maximum length eigenvalue.
    % [~, max_index] = max(abs(lambda));
    % lambda = lambda(max_index);
    re = [re, real(lambda)'];
    im = [im, imag(lambda)'];
end%for

% See - circular law.   
figure;
scatter(re(1:30*m), im(1:30*m));
title("Eigenvalue distributions");
disp("Maximum spectral radius:");
max(abs(lambdas))

figure;
hist(norms,floor(sqrt(N)));
title("Norm distribution");

figure;
hist(log(conds),floor(sqrt(N)));
title("Log condition number distribution");
