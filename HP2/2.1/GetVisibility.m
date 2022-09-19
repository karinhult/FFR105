function visibility = GetVisibility(cityLocation)
    nCities = length(cityLocation);
    d = zeros(nCities);
    for i = 1:nCities
        for j = 1:i
            xDiff = cityLocation(i,1) - cityLocation(j,1);
            yDiff = cityLocation(i,2) - cityLocation(j,2);
            d(i,j) = sqrt(xDiff^2 + yDiff^2);
            d(j,i) = d(i,j);
        end
    end
    visibility = 1./d;
end