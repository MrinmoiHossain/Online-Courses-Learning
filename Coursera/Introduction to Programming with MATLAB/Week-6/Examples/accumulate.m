function total = accumulate(n)
persistent summa;
if isempty(summa)
summa = n;
else
summa = summa + n;
end
total = summa;