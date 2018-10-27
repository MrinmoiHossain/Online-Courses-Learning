function [M] = simple_stats(N)
    M = [mean(N,2), median(N,2), min(N,[],2), max(N,[],2)];
end