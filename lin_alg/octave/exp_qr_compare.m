% Comparing different reduced QR decompositions.
% exercise 10.3

Z = [1,2,3;
     4,5,6;
     7,8,7;
     4,2,3;
     4,2,2];

[QM,RM] = modified_gs(Z);
[W,RH] = house(Z);
QH = formQ(W); 
QH = QH(:,1:3);
[Q,R] = qr(Z,0);
