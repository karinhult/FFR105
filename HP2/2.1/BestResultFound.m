bestPath = [41 35 43 31 25 26 18 5 1 3 11 6 15 12 2 9 10 13 4 23 24 17 ...
            22 14 7 19 16 21 8 20 50 32 29 47 34 42 28 46 48 33 38 45 27 ...
            39 44 40 37 49 36 30];

%% Things to plot best path
cityLocation = LoadCityLocations();
numberOfCities = length(cityLocation);

clf
addpath('TSPgraphics')
range = [0 20 0 20];
tspFigure = InitializeTspPlot(cityLocation, range);
connection = InitializeConnections(cityLocation);

pathLength = GetPathLength(bestPath,cityLocation);
PlotPath(connection,cityLocation,bestPath);

xlabel('x')
ylabel('y')