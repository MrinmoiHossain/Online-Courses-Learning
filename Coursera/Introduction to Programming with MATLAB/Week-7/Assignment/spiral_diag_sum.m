function sm = spiral_diag_sum(n)
    n = fix(n / 2);
    sm = 1 + (2 * n * (8*n^2+15*n+13)) / 3;
end