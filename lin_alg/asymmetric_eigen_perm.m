% A random matrix will be well conditioned.
% Perturbing the entries randomly will not
% perturb the spectrum too much.  

N = 5;
A = randn(N);
S = A + A';

dS = 1e-8 * randn(N);

eig(S) - eig(S+dS+dS')
% Is there a not random direction where the perturbation will be large?


% Now we do the same with a random ill-conditioned matrix.
eigenvalues = [1e7, 1e5, 1e3, 1e-3, 1e-5];
D = diag(eigenvalues);

B = A*D*A^-1; % Symmetric.
cond(B)

eig(B) - eig(B+dS+dS')
% Still not so bad. Maybe we need a very particular 
% direction of perturbation?


