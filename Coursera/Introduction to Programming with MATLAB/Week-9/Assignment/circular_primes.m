function p = circular_primes(n)
    p = 0;
    for i = primes(n - 1)
       if primeCheck(i)
           p = p + 1;
       end
    end
end

function a = primeCheck(b)
    t = num2str(b);
    
    for ii = 1:length(t)
        t = circshift(t, [0 1]);
        if ~isprime(str2double(t))
           a = false;
           return;
        end
    end
    a = true;
end