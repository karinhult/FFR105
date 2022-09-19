% This function should run the Newton-Raphson method, making use of the
% other relevant functions (StepNewtonRaphson, DifferentiatePolynomial, and
% GetPolynomialValue). Before returning iterationValues any non-plottable values 
% (e.g. NaN) that can occur if the method fails (e.g. if the input is a
% first-order polynomial) should be removed, so that only values that
% CAN be plotted are returned. Thus, in some cases (again, the case of
% a first-order polynomial is an example) there may be no points to plot.

function iterationValues = RunNewtonRaphson(polynomialCoefficients, startingPoint, tolerance)
primeCoefficients = DifferentiatePolynomial(polynomialCoefficients, 1);
bisCoefficients = DifferentiatePolynomial(polynomialCoefficients, 2);

x(1) = startingPoint;
maxIterations = 8000;

for i = 1:maxIterations
    f = GetPolynomialValue(x(i), polynomialCoefficients);
    fPrime = GetPolynomialValue(x(i), primeCoefficients);
    fBis = GetPolynomialValue(x(i), bisCoefficients);
    
    tempX = StepNewtonRaphson(x(i), fPrime, fBis);
    if tempX == NaN
        break;
    end
    x(i+1) = tempX;
    
    if abs(x(i+1)-x(i)) < tolerance
        break;
    end
end
iterationValues = x;