function out = eligible(v, q)
    out = ((v + q) / 2 >= 92) && (v > 88 && q > 88);
end