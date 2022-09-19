function path = GeneratePath(pheromoneLevel, visibility, alpha, beta)
    nNodes = length(pheromoneLevel);
    path = zeros(nNodes,1);
    startingNode = randi(nNodes);
    
    path(1) = startingNode;
    for i = 1:nNodes-1
         tabuList(i) = path(i);
         nextNode = GetNode(tabuList, pheromoneLevel, visibility, alpha, beta);
         path(i+1) = nextNode;
    end
end