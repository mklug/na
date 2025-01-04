% The two expressions are equal in theory.
% Yet they do not agree in any numebr of decimal places.
% Which expression is evaluating to a more 
% accurate answer? Why are they different?
x = 1e-15;
sqrt(x+1) - 1
x / (sqrt(x+1) + 1)
