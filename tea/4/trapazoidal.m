% f : function to be integrated
% a, b : endpoints
% n : number of subintervals.
function res = trapezoidal(f, a, b, n)
  h = (b-a)/n;
  
  res = (f(a) + f(b)) / 2;
  for i = 1:n-1
    res += f(a + i * h);
  end
  res *= h;
end
