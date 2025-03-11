R = triu(randn(50));

[Q,X] = qr(randn(50));

A = Q*R;

[Q2,R2] = qr(A);

% Forward errors:
disp("Absolute error for Q:")
norm(Q2 - Q)

disp("Absolute error for R:")
norm(R2 - R)

% Backward error:
disp("Absolute error for Q*R:")
norm(A - Q2*R2)

% Perturb to highlight the diabolic correlation of errors.
Q3 = Q + 1e-6 * randn(50);
R3 = R + 1e-6 * randn(50);

disp("Absolute error of (Q+dQ)(R+dR)")
norm(A - Q3 * R3)
