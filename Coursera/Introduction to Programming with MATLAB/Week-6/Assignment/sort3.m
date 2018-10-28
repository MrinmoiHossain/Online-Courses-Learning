function [a, b, c] = sort3(v)
    if v(1) >= v(2) && v(1) >= v(3)
       c = v(1);
       if v(2) >= v(3)
           b = v(2);
           a = v(3);
       else
           b = v(3);
           a = v(2);
       end
    elseif v(2) >= v(1) && v(2) >= v(3)
       c = v(2);
       if v(1) >= v(3)
           b = v(1);
           a = v(3);
       else
           b = v(3);
           a = v(1);
       end
    else
       c = v(3);
       if v(2) >= v(1)
           b = v(2);
           a = v(1);
       else
           b = v(1);
           a = v(2);
       end
    end
end