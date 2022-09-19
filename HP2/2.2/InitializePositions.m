function positions = InitializePositions(numberOfParticles, interval, alpha)
    
    nParticles = numberOfParticles;
    positions = zeros(nParticles, 2);
    
    r = rand(nParticles,2);  
    xMin = interval(1);
    xMax = interval(2);
    
    positions = ones(nParticles,2)*xMin + r.*(xMax-xMin);
end