function [a, b] = fence(lng, seg)
    a = ceil(lng / seg);
    b = a + 1;
end