function [out] = reverse_diag(n)
    out = zeros(n);
    index = [n:n-1:n^2-n+1];
    out(index) = 1;
end