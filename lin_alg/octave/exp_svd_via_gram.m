% The following is an unstabel way of computing the singular values 
% by reduction to an eigenvalue problem.

A = hilb(30); % ill-conditioned!!
disp("Reference singular values:");
s = svd(A)

G = A'*A;
disp("Singular values from diagonalization of the Gram matrix:");
s_approx = flip(sqrt(eig(G)))
% Worse approxiamtions for the smaller results. 

disp("Relative errors of the approximation:")
abs(s - s_approx) ./ abs(s)
