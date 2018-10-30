function [index] = small_elements(M)
    index = [];
    [r, c] = size(M);
    for m = 1:c
        for n = 1:r
            if m * n > M(n, m)
                index = [index; [n, m]];
            end
        end
    end
end