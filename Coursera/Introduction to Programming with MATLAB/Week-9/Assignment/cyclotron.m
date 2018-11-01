function [E, n] = cyclotron(V)
    m = 3.344e-27;
    q = 1.603e-19;
    B = 1.600;
    z = m*V/(q*B^2);
    r = sqrt(z);
    n = 0;
    d = 2;
    x = -r/2.0;
    
    while x >= -0.5
        x = x + d * r;
        n = n + 1;
        d = -d;
        r = sqrt(r^2+2*z);
    end
    E = V*n*1e-6;
end