function [table summa] = multable(n, m)

%MULTABLE multiplication table.
% T = MULTABLE(N) returns an N-by-N matrix
% containing the multiplication table for
% the integers 1 through N.
% MULTABLE(N,M) returns an N-by-M matrix.
% Both input arguments must be positive
% integers.
% [T SM] = MULTABLE(...) returns the matrix
% containing the multiplication table in T
% and the sum of all its elements in SM.

if nargin < 1
    error('must have at least one input argument');
endif nargin < 2
    m = n;
end

table = (1:n)' * (1:m);

if nargout == 2
    summa = sum(table(:));
end