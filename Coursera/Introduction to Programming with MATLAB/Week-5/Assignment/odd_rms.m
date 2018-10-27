function orms = odd_rms(nn)
    t = [1:2:2*nn] .^ 2;
    avg = sum(t) / length(t);
    orms = sqrt(avg);
end