% Looking at what happens if we "do the QR algorithm but 
% with the LU decomposition.

A = randn(5); 
A += A';

B = A;
for _=1:1000
    [L,U] = lu(B);
    B = U*L;
    B
end

% Nothing good happens...
