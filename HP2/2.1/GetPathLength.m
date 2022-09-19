function pathLength = GetPathLength(path,cityLocation)
    nCities = length(cityLocation);
    pathLength = 0;
    
    for i = 1:nCities-1
        currentCity = path(i);
        nextCity = path(i+1);
        xDistance = cityLocation(currentCity,1) - cityLocation(nextCity,1);
        yDistance = cityLocation(currentCity,2) - cityLocation(nextCity,2);
        pathLength = pathLength + sqrt(xDistance^2 + yDistance^2);
    end
    %Goes back to first node
    firstCity = path(1);
    lastCity = path(end);
    xDistance = cityLocation(lastCity,1) - cityLocation(firstCity,1);
    yDistance = cityLocation(lastCity,2) - cityLocation(firstCity,2);
    pathLength = pathLength + sqrt(xDistance^2 + yDistance^2);
end
