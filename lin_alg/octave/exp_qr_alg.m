N = 5;
A = randn(N);
A += A';
eig(A)

A0 = A;
N_iterations = 100;
for _=1:N_iterations
    [Q,R] = qr(A0,0);
    A0 = R*Q;
end%for

% A0 will now be the result of N_iterations of the QR-algorithm.
% It should have approximations to the eignevalues on the diagonal
% and zeros elsewhere.  
