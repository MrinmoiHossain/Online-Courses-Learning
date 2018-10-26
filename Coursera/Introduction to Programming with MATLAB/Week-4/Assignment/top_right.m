function a = top_right(N, n)
    [r, c] = size(N);
    temp = c - n + 1;
    a = N(1:n, temp:c);
end