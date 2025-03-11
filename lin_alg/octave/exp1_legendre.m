N = 7;
C = 2^N;
x = (-C:C)'/C;
A = [x.^0 x.^1 x.^2 x.^3];
[Q,R] = qr(A,0);

scale = Q(2*C+1, :);
Q = Q*diag(1 ./scale);
%plot(Q)

p0 = @(x) 1;
p1 = @(x) x;
p2 = @(x) (3/2)*x^2 - (1/2);
p3 = @(x) (5/2)*x^3 - (3/2)*x;

E = [arrayfun(p0,x) arrayfun(p1,x) arrayfun(p2,x) arrayfun(p3,x)];

D = abs(Q-E);
plot(D)
