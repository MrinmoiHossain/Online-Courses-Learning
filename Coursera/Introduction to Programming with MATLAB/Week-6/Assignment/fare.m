function cost = fare(d, age)
    d = round(d);
    
    if d > 10
        cost = 2 + 9 * 0.25 + (d - 10) * 0.10;
    elseif d > 1
        cost = 2 + (d - 1) * 0.25;
    else
        cost = 2;
    end
    if (age >= 60 || age <= 18)
        cost = cost * 0.8;
    end
end