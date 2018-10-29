function [avg] = exp_average(in, b)
    persistent out;
    persistent bn;
    
    if nargin < 2
       if isempty(bn)
           bn = 0.1;
       else
           b = bn;
       end
       
       if isempty(out)
           out = in;
       else
           out = b * in + (1 - b) * out;
       end
    else
        bn = b;
        out = in;
    end
    
    avg = out;
end