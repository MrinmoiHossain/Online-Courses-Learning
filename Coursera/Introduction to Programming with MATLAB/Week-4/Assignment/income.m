function overallIncome = income(rate, price)
    hour = 6 * 8 * 2;
    total = (rate .* hour) .* price;
    overallIncome = sum(total);
end