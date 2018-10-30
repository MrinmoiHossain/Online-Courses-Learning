function total = halfsum(A)
    total =0;
    [r,c] = size(A);
    for i = 1:r
       total = total + sum(A(r-i+1,i:end));
    end
end