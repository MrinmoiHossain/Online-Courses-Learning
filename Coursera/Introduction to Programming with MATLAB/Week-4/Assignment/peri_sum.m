function perimeter = peri_sum(A)
    [r, c] = size(A);
    perimeter = sum(A(1, 1:c)) + sum(A(r, 1:c)) + sum(A(2:r-1, 1)) + sum(A(2:r-1, c));
end