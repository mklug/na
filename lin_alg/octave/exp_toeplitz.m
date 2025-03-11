% Looking at highest singular values of some Toeplitz matrices.
for N=1:10
    T = eye(N) + diag(ones(1, N-1),1)*2;
    norm(T^-1,2)
end

