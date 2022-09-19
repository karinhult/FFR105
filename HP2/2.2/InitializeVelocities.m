function velocities = InitializeVelocities(numberOfBoids, interval, alpha, deltaT)
    nParticles = numberOfBoids;
    velocities = zeros(nParticles, 2);

    r = rand(nParticles,2);  
    xMin = interval(1);
    xMax = interval(2);
    
    term1 = ones(nParticles,2)*(-(xMax-xMin)/2);
    term2 = r.*(xMax-xMin);
    constant = alpha/deltaT;
    velocities = constant * (term1 + term2);
end