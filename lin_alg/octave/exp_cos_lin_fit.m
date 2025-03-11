% Exercise 11.3.  Solving least squares several different ways.  
format('long');
warning('off', 'all');
m = 50;
n = 12;

t = linspace(0,1,m);
A = fliplr(vander(t,n));
b = cos(4*t)';

% (a) Solve normal equation with built in.
xa = (A' * A) \ (A' * b); % Throws warnings -> huge conditioning number.

% (b) Compute QR with modified Gram-Schmidt.
[Q,R] = modified_gs(A);
y = Q' * b;
xb = R \ y;

% (c) Our Householder triangulizer.  
[W,R_house] = house(A);
Q_house = formQ(W);
Q_house = Q_house(1:m, 1:n);
y = Q_house' * b;
xc = R_house \ y;

% (d) Built in QR.
[Q,R] = qr(A,0);
y = Q' * b;
xd = R \ y;

% (e) Built in laest squares solution.
% Based on QR decomposition.  
xe = A \ b;
% A' * (A*xe - b);

% (f) SVD method.
[U,S,V] = svd(A,"econ");
y = U' * b;
w = S \ y;
xf = V * w;

% Print the residuals.
norm(b-A*xa)
norm(b-A*xb)
norm(b-A*xc)
norm(b-A*xd)
norm(b-A*xe)
norm(b-A*xf)

