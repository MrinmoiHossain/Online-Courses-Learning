function out = triangle_wave(n)
    t = 0:pi/250:4*pi;
    out = zeros(1, length(t));
    sign = 1;
    for k = 1:2:2*n+1
        out = out + sign * sin(k*t) / (k)^2;
        sign = -sign;
    end
end