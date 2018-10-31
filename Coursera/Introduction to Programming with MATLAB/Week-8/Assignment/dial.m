function out = dial(s)
    len = length(s);
    out = uint64(0);
    if len > 16
        return;
    end
    
    for i = 1:len
        if s(i) == 'A' || s(i) == 'B' || s(i) == 'C'
            s(i) = '2';
        elseif s(i) == 'D' || s(i) == 'E' || s(i) == 'F'
            s(i) = '3';
        elseif s(i) == 'G' || s(i) == 'H' || s(i) == 'I'
            s(i) = '4';
        elseif s(i) == 'J' || s(i) == 'K' || s(i) == 'L'
            s(i) = '5';
        elseif s(i) == 'M' || s(i) == 'N' || s(i) == 'O'
            s(i) = '6';
        elseif s(i) == 'P' || s(i) == 'Q' || s(i) == 'R' || s(i) == 'S'
            s(i) = '7';
        elseif s(i) == 'T' || s(i) == 'U' || s(i) == 'V'
            s(i) = '8';
        elseif s(i) == 'W' || s(i) == 'X' || s(i) == 'Y' || s(i) == 'Z' 
            s(i) = '9';
        elseif ~(s(i) >= '0' && s(i) <= '9')
            return;
        end
    end
    out = uint64(str2num(s));
end