function [e, k] = approximate_e(delta)
    e = 0;
    k = -1;
    fact = 1;
    while exp(1) - e > delta
        k = k + 1;
        fact = fact * max(k, 1);
        e = e + 1 / fact; 
    end
end