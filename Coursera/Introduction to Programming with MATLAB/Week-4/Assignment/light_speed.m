function [time, conv] = light_speed(distance)
    time = (distance ./ 300000) ./ 60;
    conv = distance ./ 1.609;
end