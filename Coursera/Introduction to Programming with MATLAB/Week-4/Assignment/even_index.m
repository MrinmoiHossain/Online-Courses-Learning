function [output] = even_index(M)
    [r, c] = size(M);
    output = M(2:2:r, 2:2:c);
end