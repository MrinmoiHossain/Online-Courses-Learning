function out = integerize(A)
    mx = max(A(:));
    mn = min(A(:));
    
    if intmax('int8') >= mx && intmin('int8') <= mn
        out = 'int8';
    elseif intmax('int16') >= mx && intmin('int16') <= mn
       out = 'int16';
    elseif intmax('int32') >= mx && intmin('int32') <= mn
        out = 'int32';
    elseif intmax('int64') >= mx && intmin('int64') <= mn
        out = 'int64';
    else
        out = 'NONE';
    end
end