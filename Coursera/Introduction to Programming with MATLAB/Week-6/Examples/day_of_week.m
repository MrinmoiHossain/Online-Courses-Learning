function day_of_week(n)
if n == 1
    fprintf('Sunday,');
    day_type = 2;
elseif n == 2
    fprintf('Monday,');
    day_type = 1;
elseif n == 3
    fprintf('Tuesday,');
    day_type = 1;
elseif n == 4
    fprintf('Wednesday,');
    day_type = 1;
elseif n == 5
    fprintf('Thursday,');
    day_type = 1;
elseif n == 6
    fprintf('Friday,');
    day_type = 1;
elseif n == 7
    fprintf('Saturday,');
    day_type = 2;
else
    fprintf('Number must be from 1 to 7.\n');
    return
end
if day_type == 1
    fprintf(' which is a week day\n');
else
    fprintf(' which is a weekend day\n');
end
