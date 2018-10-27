function per = zero_stat(M)
    [r, c] = size(M);
    t = r * c;
    per = 100 - (sum(sum(M)) / t) * 100;
end