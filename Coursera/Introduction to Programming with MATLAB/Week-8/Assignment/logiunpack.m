function [L] = logiunpack(n)
    len = length(n);
    L = false(len);
    
    for i = 1:len
       for j = 1:length(n{i})
           L(i, n{i}(j)) = true;
       end
    end
end