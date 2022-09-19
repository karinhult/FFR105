% This method should plot the polynomial and the iterates obtained
% using NewtonRaphsonStep (if any iterates were generated).

function PlotIterations(polynomialCoefficients, iterationValues)
clf
xMax = max(iterationValues);
xMin = min(iterationValues);

extraInterval = (xMax-xMin)/5;

xInterval = linspace(xMin-extraInterval,xMax+extraInterval);
for i=1:length(xInterval)
    functionValue(i) = GetPolynomialValue(xInterval(i), polynomialCoefficients);
end
for i=1:length(iterationValues)
    polynomialValue(i) = GetPolynomialValue(iterationValues(i), polynomialCoefficients);
end

hold on
plot(xInterval,functionValue)                   %plots the function
plot(iterationValues, polynomialValue, 'bo')    %plots iterationvalues
hold off