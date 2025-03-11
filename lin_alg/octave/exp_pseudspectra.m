% Various pseudospectra of the matrix in exercise 26.2.

N = 32;
A = -eye(N) + circshift(eye(N),-1) + circshift(eye(N),-2);

n_points = 1000;
x = linspace(-3, 3, n_points);
y = linspace(-3, 3, n_points);
[X, Y] = meshgrid(x, y);

eps = 1e-6;
Z = zeros(n_points, n_points);
for i = 1:n_points
    for j = 1:n_points
        lambda = X(i, j) + 1i*Y(i, j); 
        Z(i, j) = norm(inv(A - lambda * eye(size(A))));
    end
end

contour(X, Y, Z, [1,1e1,1e2,1e3,1e4,1e5,1e6]);  
xlabel('Re(\lambda)');
ylabel('Im(\lambda)');
title('Pseudospectrum Boundary of Matrix A');
colorbar;
