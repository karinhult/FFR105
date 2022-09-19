function nextNode = GetNode(tabuList, pheromoneLevel, visibility, alpha, beta)
    currentCity = tabuList(end);
    nCities = length(pheromoneLevel);
    probability = zeros(nCities, 1);
    
    numerator = 0;
    denominator = 0;
    
    %Calculate whole denominator
    for i = 1:nCities
        isVisited = ismember(i,tabuList);
        if ~isVisited
            denominator = denominator + pheromoneLevel(currentCity, i)^alpha*visibility(currentCity, i)^beta; 
        end
    end
    
    if denominator == 0     %Pick random city from the ones left?
        nodesLeft = setdiff(tabuList, 1:nCities);
        idx = randi(length(nodesLeft));
        nextNode = nodesLeft(idx);
        return
    end
        
    
    for i = 1:nCities
        isVisited = ismember(i,tabuList);
        if ~isVisited
            numerator = pheromoneLevel(currentCity, i)^alpha*visibility(currentCity, i)^beta;
            probability(i) = numerator/denominator;
        end
    end
    
    probabilitySum = 0;
    r = rand;
    for i = 1:nCities
        probabilitySum = probabilitySum + probability(i);
        if r < probabilitySum
            nextNode = i;
            break
        end
    end
   