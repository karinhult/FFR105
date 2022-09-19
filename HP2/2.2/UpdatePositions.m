function positions = UpdatePositions(positions, velocities, deltaT)
    
    nParticles = length(positions);
    for i = 1:nParticles
        positions(i,:) = positions(i,:) + deltaT * velocities(i,:);
    end
end