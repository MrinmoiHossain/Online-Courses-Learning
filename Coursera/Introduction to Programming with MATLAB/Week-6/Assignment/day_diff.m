function out = day_diff(month1, day1, month2, day2)
    v = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    
    if ~isscalar(month2) || ~isscalar(day1)
        out = -1;
    elseif (month1 > 12 || month2 > 12) || (month1 < 1 || month2 < 1 || day1 < 1 || day2 < 1)
        out = -1;
    elseif month1 ~= fix(month1) || day2 ~= fix(day2)
        out = -1;
    elseif (day1 > v(month1) || day2 > v(month2))
        out = -1;
    else
        if month1 > month2
           fm = month2;
           fd = day2;
           sm = month1;
           sd = day1;
        else
            fm = month1;
            fd = day1;
            sm = month2;
            sd = day2;
        end
        out = abs(sum(v(fm:sm-1)) + sd - fd);
    end
end