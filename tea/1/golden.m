% lim fib(n+1)/fib(n) = (1 + sqrt(5)) / 2
phi = (1+sqrt(5))/2; % The "golden ratio".

for n=10:25
    abs(phi - fib(n+1)/fib(n)) / phi
end
