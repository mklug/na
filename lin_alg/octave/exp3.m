A = [0.7, 0.70711; 0.70001, 0.70711];
[Q,R] = qr(A);
norm(eye(2) - Q*Q')

[QM,RM] = modified_gs(A);
norm(eye(2) - QM*QM')
