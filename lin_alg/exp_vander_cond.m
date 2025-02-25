% Exercise 12.2.
res = [];
N = 30;
for n = 1:N
    m = 2*n-1;
    x = linspace(-1,1,n);
    y = linspace(-1,1,m);   
    Vx = fliplr(vander(x',n));
    Vy = fliplr(vander(y',n));
    res = [res, norm(Vy * (Vx^-1),'inf')];
end%for

semilogy(1:N, res);

