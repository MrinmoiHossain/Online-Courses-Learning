function [product, ind] = max_product(v, n)
    len = length(v);
    if len < n
        product = 0;
        ind = -1;
    else
       P = [];
       for i = 1:len + 1 - n
           P(i) = prod(v(i:i+n-1));
       end
       [product, ind] = max(P);
    end
end