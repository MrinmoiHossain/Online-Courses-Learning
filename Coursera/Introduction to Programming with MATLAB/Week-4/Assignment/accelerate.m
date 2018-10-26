function amag = accelerate(F1,F2,m)
    F = F1 + F2;
    a = F ./ m;
    amag = norm(a);
end