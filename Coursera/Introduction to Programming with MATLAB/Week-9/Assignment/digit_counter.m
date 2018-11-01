function n = digit_counter(file)
    fn = fopen(file, 'r');
    n = -1;
    if fn < 0
        return;
    else
        f = fread(fn, inf, 'char=>char');
        n = sum(isstrprop(f, 'digit'));
    end
    fclose(fn);
end