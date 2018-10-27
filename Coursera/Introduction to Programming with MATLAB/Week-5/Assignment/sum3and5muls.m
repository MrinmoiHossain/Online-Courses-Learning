function sm = sum3and5muls(n)
    sm3 = sum(3:3:n);
    sm5 = sum(5:5:n);
    sm15 = sum(15:15:n);
    sm = sm3 + sm5 - sm15;
end