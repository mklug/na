N = 1000;
A = rand(N,N); % entries from Unif(0,1).
%B = randn(2,2); % Gaussian entries.

[Q,R] = qr(A);
% Q(1,:) % first column.
% Q(:,1) % first row.
% Q' % transpose.

b = rand(N,1);

% Solving Ax = b.
x = R \ (Q' * b);
