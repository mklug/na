H = zeros(15,40);
i0 = 2;
j0 = 2;

for _=1:5
    H(i0:i0+7, j0:j0+5) = 1;
    i0 += 1;
    j0 += 8;
end%for

% H -> 2,2
H(2:2+2,4:4+1) = 0;
H(7:7+2,4:4+1) = 0;
% E -> 3,10
H(5,12:15) = 0;
H(8,12:15) = 0;
% L -> 4,18
H(4:4+5, 20:20+3) = 0;
% L -> 5,26
H(5:5+5, 28:28+3) = 0;
% O -> 6,34
H(8:8+3, 36:36+1) = 0;

%spy(H)
%plot(svd(H))
%semilogy(svd(H))

[U,S,V] = svd(H);

% Make the best low rank approximations.    
colormap(gray);
A = zeros(15,40);
N = rank(H) % 10
for i=1:N
    A += S(i,i)*U(:,i)*V(:,i)';
    norm(A-H)
    subplot(1,N,i);
    pcolor(A);
    set(gca, 'YDir', 'reverse');
end%for
colorbar;
