function [q] = intquad(n, m)
    q = [zeros(n,m), ones(n,m);2*ones(n,m), 3*ones(n,m)];
end