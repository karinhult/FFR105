function deltaPheromoneLevel = ComputeDeltaPheromoneLevels(pathCollection,pathLengthCollection);
    nCities = size(pathCollection,2);
    nAnts = size(pathCollection,1);
    deltaTau = zeros(nCities);
    deltaPheromoneLevel = zeros(nCities);
    for k = 1:nAnts
        currentPathLength = pathLengthCollection(k);
        currentPath = pathCollection(k,:);
        for i = 1:nCities
            for j = 1:nCities
                if (j==(mod(i, nCities) + 1)) || (j==(i-1))
                    deltaTau(currentPath(i), currentPath(j))=1/currentPathLength;
                end
            end
        end
        deltaPheromoneLevel = deltaPheromoneLevel + deltaTau;
    end    
end
                