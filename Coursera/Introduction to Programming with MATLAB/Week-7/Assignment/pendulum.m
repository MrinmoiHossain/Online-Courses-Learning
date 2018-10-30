function   T = pendulum(L, a0) 
    T = 0;
    if L > 0
        dt = 1e-6;
        angle = abs(a0);
        g = 9.8;
        angularVelocity = 0;
        while angle > 0
            angularAcceleration = g*sin(angle)/L;
            angularVelocity = angularVelocity + angularAcceleration * dt;
            angle = angle - angularVelocity * dt;
            T = T + dt;
        end
        T = T * 4;
    end
end