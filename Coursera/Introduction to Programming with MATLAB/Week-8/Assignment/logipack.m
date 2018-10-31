function [L] = logipack(n)
    [r, c] = size(n);
    L = cell(1, r);
    for i = 1:r
        L{i} = find(n(i, :));
        if isempty(L{i})
           L{i} = []; 
        end
    end
end