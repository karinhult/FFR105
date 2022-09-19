function selectedIndividualIndex = TournamentSelect(fitnessList, tournamentProbability, tournamentSize);
    populationSize = size(fitnessList,1);
    tourSize = tournamentSize;

    iTmp = zeros(tourSize);
    fitness = zeros(tourSize,1);
    for i = 1:tourSize
        iTmp(i) = 1 + fix(rand*populationSize);
        fitness(i) = fitnessList(iTmp(i),1);
    end
    
    r = rand;
    boolean = true;
    while boolean
        [fitValue, index] = max(fitness);
        if (r < tournamentProbability)
            selectedIndividualIndex = iTmp(index);
            boolean = false;
        else
            fitness(index) = 0; %disqualifies the fittest, 
                                %assuming only positive values of fitness
            tourSize = tourSize - 1;
            if tourSize == 1
                boolean = false;
            end
        end
    end
    
    if tourSize == 1
        [fitValue, index] = max(fitness);
        selectedIndividualIndex = iTmp(index);
    end
end