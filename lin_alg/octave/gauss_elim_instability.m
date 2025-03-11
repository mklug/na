% Example to show the instability of Gaussian elimination.

A = [1e-20, 1; 1, 1];
[L,U] = gauss_elim(A);
norm(A - L*U)
