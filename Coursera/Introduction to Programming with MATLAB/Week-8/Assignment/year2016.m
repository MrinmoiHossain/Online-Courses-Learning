function [month] = year2016(date)
    if ~isscalar(date) || date < 1 || date > 12 || date ~= floor(date)
        month = [];
        return;
    end
    monthC = [31 29 31 30 31 30 31 31 30 31 30 31];
    monthName = {'January'; 'February'; 'March'; 'April'; 'May'; 'June'; 'July'; 'August'; 'September'; 'October'; 'November'; 'December'};
    dayName = {'Sun'; 'Mon'; 'Tue'; 'Wed'; 'Thu'; 'Fri'; 'Sat'};
    
    start = 4;  
    start = start + sum(monthC(1:date-1));
    for i = 1:monthC(date)
        month(i).month = monthName{date};
        month(i).date = i;
        month(i).day = dayName{rem(start+i,7)+1};
    end 
end