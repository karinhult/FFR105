%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameter specifications
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

numberOfRuns = 100;                % Do NOT change
populationSize = 100;              % Do NOT change
maximumVariableValue = 5;          % Do NOT change (x_i in [-a,a], where a = maximumVariableValue)
numberOfGenes = 50;                % Do NOT change
numberOfVariables = 2;             % Do NOT change
numberOfGenerations = 300;         % Do NOT change
tournamentSize = 2;                % Do NOT change
tournamentProbability = 0.75;      % Do NOT change
crossoverProbability = 0.8;        % Do NOT change


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Batch runs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%The following values are runs made for
%pMut = [0, 0.01, 0.02, 0.03, 0.05, 0.07, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.75, 0.9, 1];

mutationProbability = 0;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList000 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList000(i,1) = maximumFitness;
end

mutationProbability = 0.01;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList001 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList001(i,1) = maximumFitness;
end

mutationProbability = 0.02;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList002 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList002(i,1) = maximumFitness;
end

mutationProbability = 0.03;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList003 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList003(i,1) = maximumFitness;
end

mutationProbability = 0.05;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList005 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList005(i,1) = maximumFitness;
end

mutationProbability = 0.07;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList007 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList007(i,1) = maximumFitness;
end

mutationProbability = 0.1;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList010 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList010(i,1) = maximumFitness;
end

mutationProbability = 0.2;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList020 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList020(i,1) = maximumFitness;
end

mutationProbability = 0.3;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList030 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList030(i,1) = maximumFitness;
end

mutationProbability = 0.4;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList040 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList040(i,1) = maximumFitness;
end

mutationProbability = 0.5;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList050 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList050(i,1) = maximumFitness;
end

mutationProbability = 0.6;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList060 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList060(i,1) = maximumFitness;
end

mutationProbability = 0.75;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList075 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList075(i,1) = maximumFitness;
end

mutationProbability = 0.9;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList090 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList090(i,1) = maximumFitness;
end

mutationProbability = 1;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList100 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList100(i,1) = maximumFitness;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Summary of results
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

average000 = mean(maximumFitnessList000);
median000 = median(maximumFitnessList000);
std000 = sqrt(var(maximumFitnessList000));
sprintf('PMut = 0.00: Median: %0.10f, Average: %0.10f, STD: %0.10f', median000, average000, std000)

average001 = mean(maximumFitnessList001);
median001 = median(maximumFitnessList001);
std001 = sqrt(var(maximumFitnessList001));
sprintf('PMut = 0.01: Median: %0.10f, Average: %0.10f, STD: %0.10f', median001, average001, std001)

average002 = mean(maximumFitnessList002);
median002 = median(maximumFitnessList002);
std002 = sqrt(var(maximumFitnessList002));
sprintf('PMut = 0.02: Median: %0.10f, Average: %0.10f, STD: %0.10f', median002, average002, std002)

average003 = mean(maximumFitnessList003);
median003 = median(maximumFitnessList003);
std003 = sqrt(var(maximumFitnessList003));
sprintf('PMut = 0.03: Median: %0.10f, Average: %0.10f, STD: %0.10f', median003, average003, std003)

average005 = mean(maximumFitnessList005);
median005 = median(maximumFitnessList005);
std005 = sqrt(var(maximumFitnessList005));
sprintf('PMut = 0.05: Median: %0.10f, Average: %0.10f, STD: %0.10f', median005, average005, std005)

average007 = mean(maximumFitnessList007);
median007 = median(maximumFitnessList007);
std007 = sqrt(var(maximumFitnessList007));
sprintf('PMut = 0.07: Median: %0.10f, Average: %0.10f, STD: %0.10f', median007, average007, std007)

average010 = mean(maximumFitnessList010);
median010 = median(maximumFitnessList010);
std010 = sqrt(var(maximumFitnessList010));
sprintf('PMut = 0.10: Median: %0.10f, Average: %0.10f, STD: %0.10f', median010, average010, std010)

average020 = mean(maximumFitnessList020);
median020 = median(maximumFitnessList020);
std020 = sqrt(var(maximumFitnessList020));
sprintf('PMut = 0.20: Median: %0.10f, Average: %0.10f, STD: %0.10f', median020, average020, std020)

average030 = mean(maximumFitnessList030);
median030 = median(maximumFitnessList030);
std030 = sqrt(var(maximumFitnessList030));
sprintf('PMut = 0.30: Median: %0.10f, Average: %0.10f, STD: %0.10f', median030, average030, std030)

average040 = mean(maximumFitnessList040);
median040 = median(maximumFitnessList040);
std040 = sqrt(var(maximumFitnessList040));
sprintf('PMut = 0.40: Median: %0.10f, Average: %0.10f, STD: %0.10f', median040, average040, std040)

average050 = mean(maximumFitnessList050);
median050 = median(maximumFitnessList050);
std050 = sqrt(var(maximumFitnessList050));
sprintf('PMut = 0.50: Median: %0.10f, Average: %0.10f, STD: %0.10f', median050, average050, std050)

average060 = mean(maximumFitnessList060);
median060 = median(maximumFitnessList060);
std060 = sqrt(var(maximumFitnessList060));
sprintf('PMut = 0.60: Median: %0.10f, Average: %0.10f, STD: %0.10f', median060, average060, std060)

average075 = mean(maximumFitnessList075);
median075 = median(maximumFitnessList075);
std075 = sqrt(var(maximumFitnessList075));
sprintf('PMut = 0.75: Median: %0.10f, Average: %0.10f, STD: %0.10f', median075, average075, std075)

average090 = mean(maximumFitnessList090);
median090 = median(maximumFitnessList090);
std090 = sqrt(var(maximumFitnessList090));
sprintf('PMut = 0.90: Median: %0.10f, Average: %0.10f, STD: %0.10f', median090, average090, std090)

average100 = mean(maximumFitnessList100);
median100 = median(maximumFitnessList100);
std100 = sqrt(var(maximumFitnessList100));
sprintf('PMut = 1.00: Median: %0.10f, Average: %0.10f, STD: %0.10f', median100, average100, std100)