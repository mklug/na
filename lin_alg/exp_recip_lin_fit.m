% Exercise 11.2.  Fitting some nonlinear functions lienarly.  
% Get coefficents by solving least squares with QR decomposition.  
v = 1:0.01:2;
v = v';

A = [exp(v), sin(v), gamma(v)];
b = 1./v;

[Q,R] = qr(A,0);
y = Q'*b;
x = R \ y;

% Test the error on multiple points.  
N = 1000;
z = 1 + rand(1,N);
zhat = x(1)*exp(z) + x(2)*sin(z) + x(3)*gamma(z);

% Mean absolute error.  
mean(abs(1./z - zhat)) % not too sensitive too the step size.
