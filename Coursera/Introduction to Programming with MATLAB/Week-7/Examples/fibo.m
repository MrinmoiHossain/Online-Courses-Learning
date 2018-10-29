function f = fibo(n)
if ( ~isscalar(n) || n < 1 || n ~= fix(n))
    error('n must be a positive integer!');
end
 
f(1) = 1;
f(2) = 1;
for ii = 3:n
    f(ii) = f(ii-2) + f(ii-1);
end
