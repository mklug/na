% Implementation of Strassen's algorithm for 
% square matrices with power of 2 size.
function C = strassen(A,B)
    
    [m,~] = size(A);
    if (m==1)
        C = A*B;
        return;
    end%if

    [E,F,G,H] = quarter(B);
    [A,B,C,D] = quarter(A);
   
    P1 = strassen(A+D, E+H);
    P2 = strassen(C+D, E);
    P3 = strassen(A, F-H);
    P4 = strassen(D, G-E);
    P5 = strassen(A+B, H);
    P6 = strassen(C-A, E+F);
    P7 = strassen(B-D, G+H);

    W = P1 + P4 - P5 + P7;
    Y = P2 + P4;
    X = P3 + P5;
    Z = P1 + P3 - P2 + P6;

    C = [W,X;Y,Z];
end%function

function [A,B,C,D] = quarter(X)
    [m,~] = size(X);
    A = X(1:m/2,   1:m/2);
    B = X(1:m/2,   m/2+1:m);
    C = X(m/2+1:m, 1:m/2); 
    D = X(m/2+1:m, m/2+1:m);
end%function
