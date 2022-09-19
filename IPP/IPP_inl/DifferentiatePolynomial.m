% This method should return the coefficients of the k-th derivative (defined by
% the derivativeOrder) of the polynomial given by the polynomialCoefficients (see also GetPolynomialValue)

function derivativeCoefficients = DifferentiatePolynomial(polynomialCoefficients, derivativeOrder)
if derivativeOrder > 2 %can remove this if you would want it to work for higher derivatives
    derivativeCoefficients = []
else
    if derivativeOrder > 1  %Recursive algorithm
        polynomialCoefficients = DifferentiatePolynomial(polynomialCoefficients, derivativeOrder-1);
    end

    polynomOrder = length(polynomialCoefficients);
    derivativeCoefficients = zeros(polynomOrder - 1);
    for i = 1:length(derivativeCoefficients)
        derivativeCoefficients(i) = polynomialCoefficients(i+1)*i;
    end
end
