% Checking the behavior of the QR algorithm with an unsymmetric input.
A = randn(5);

B = A;
for _=1:10000
    [Q,R] = qr(B,0);
    A = R*Q;
end

disp("Eignenvalues of A:")
eig(A)

disp("Result of QR algorithm:")
B
