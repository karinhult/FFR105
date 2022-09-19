function velocities = UpdateVelocities(velocities, positions, bestPosition, bestPerformance, c1, c2, inertiaWeight, deltaT, vMax)
    nParticles = length(velocities);
    r = rand(nParticles, 1);    %r, q pair of random numbers for each particle.
    q = rand(nParticles, 1);    %Now not random for each dimension, accoring to lecture slides.
    for i = 1:nParticles
        term1 = q(i).*(bestPosition(i,:) - positions(i,:))./deltaT;
        term2 = r(i).*(bestPerformance - positions(i,:))./deltaT;
        velocities(i,:) = inertiaWeight * velocities(i,:) + c1*term1 + c2*term2;
        
        %Restrict velocities
        if abs(velocities(i,1)) > vMax
            velocities(i,1) = sign(velocities(i,1))*(vMax);
        end
        if abs(velocities(i,2)) > vMax
            velocities(i,2) = sign(velocities(i,2))*(vMax);
        end
    end
end