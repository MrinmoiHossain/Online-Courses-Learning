function [n] = palin_product(dig, lim)
    a = 10^(dig-1);
    n = 0;
    if lim > a^2
        b = 10^dig - 1;
        p = (a:b)' * (a:b);
        p = p(p < lim);
        q = str2num(fliplr(num2str(p)));
        n = max(p(p == q));
    end
end