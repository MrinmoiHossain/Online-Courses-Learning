function s = huge_add(a, b)
    if ~ischar(a) || ~ischar(b) || sum(isstrprop(a, 'digit')) ~= length(a) || sum(isstrprop(b, 'digit')) ~= length(b)
        s = -1;
        return;
    end
    
    len = max([length(a), length(b)]);
    a = [a(end:-1:1) '0'+zeros(1, len-length(a))];
    b = [b(end:-1:1) '0'+zeros(1, len-length(b))];
    carry = 0;
    for i = 1:len
        c = carry + str2num(a(i)) + str2num(b(i));
        carry = c > 9;
        s(i) = num2str(mod(c, 10));
    end
    if carry
        s(end+1) = '1';
    end
    s = s(end:-1:1);
end