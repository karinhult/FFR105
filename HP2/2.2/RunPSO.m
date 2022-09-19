clear all
interval = [-5,5];
numberOfParticles = 30;     %Commonly between 20-40
alpha = 1;              %Can be changed in interval [0,1]
deltaT = 1;             %Can be changed 
vMax = (interval(2) - interval(1))/deltaT;

c1 = 2;                 %c1 + c2 <= 4
c2 = 2;                 %These can be changed
inertiaWeight = 1.5;    %Can be changed
lowerInertiaBound = 0.3;    %Can be changed
beta = 0.95;                %Can be changed


% Initialization of positions and velocities of particles
positions = InitializePositions(numberOfParticles, interval);
velocities = InitializeVelocities(numberOfParticles, interval, alpha, deltaT);

bestPosition = positions;
fPB = zeros(numberOfParticles,1);

minValue = 10;
tolerance = 1e-16;

% Loop terminates when the function of the all time best is lower than
% tolerance. Appears to be sufficient termination criterion since it can
% identify 4 different minimums.
while minValue > tolerance
    for i = 1:numberOfParticles
        x = bestPosition(i,:);
        fPB(i) = EvaluationFunction(x);

        x = positions(i,:);
        f(i) = EvaluationFunction(x);


        if f(i) < fPB(i)
            bestPosition(i,:) = positions(i,:);
        end
    end
    [minValue, minIndex] = min(fPB);
    bestPerformance = bestPosition(minIndex,:);
    
    velocities = UpdateVelocities(velocities, positions, bestPosition, bestPerformance, c1, c2, inertiaWeight, deltaT, vMax);
    positions = UpdatePositions(positions, velocities, deltaT);
    
    if inertiaWeight > lowerInertiaBound
        inertiaWeight = inertiaWeight * beta;
    end
end

bestPerformance
minValue