function [sn, avg] = sindeg(deg)
    red = deg .* (pi / 180);
    sn = sin(red);
    [r, c] = size(sn);
    avg = sum(sn) / c;
    avg = sum(avg) / r;
end