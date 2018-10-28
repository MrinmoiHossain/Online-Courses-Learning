function p = poly_val(c0, c, x)
    if isempty(c)
        p = c0;
    elseif isscalar(c)
        p = c0 + c * x;
    else
        if ~isrow(c)
            c = c';
        end
        [r, N] = size(c);
        p = c0 + sum(c.* x.^[1:N]);
    end
end