function x = find_zero(f, x1, x2)
    x = (x1 + x2) / 2.0;
    
    while abs(f(x)) > 1e-10
        if f(x1) * f(x) > 0
            x1 = x;
        else
            x2 = x;
        end
        x = (x1 + x2) / 2.0;
    end
end