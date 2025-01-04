% lim F_n/F_{n-1} = (1 + sqrt(5)) / 2
phi = (1+sqrt(5))/2;

for n=10:25
    abs(phi - fib(n+1)/fib(n)) / phi
end
