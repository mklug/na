N = 80;

[U,X] = qr(randn(80));
[V,X] = qr(randn(80));
S = diag(2.^(-1:-1:-N));

A = U*S*V;

[QC, RC] = classic_gs(A);
[QM, RM] = modified_gs(A);

% norm(eye(N) - QC*QC')
% norm(eye(N) - QM*QM')
% [Q,R] = qr(A); % Householder triangulation.
% norm(eye(N) - Q*Q')
