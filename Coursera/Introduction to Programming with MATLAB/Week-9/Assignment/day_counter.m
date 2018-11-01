function d = day_counter(n)
    if ~isscalar(n) || n < 1776 || n > 2016 || n ~= floor(n)
        fprintf('Invalid input. Enter an integer between 1776 and 2016 inclusive');
        return;
    end
    
    d = sum(weekday(datetime(n, 1:12, 1)) == 2);
end