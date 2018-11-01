function s = smallest_multiple(n)
    s = uint64(1);
    for i = 1:n
       s = s * (i / gcd(s, i)); 
    end
    if s == intmax('uint64')
       s = uint64(0); 
    end
end