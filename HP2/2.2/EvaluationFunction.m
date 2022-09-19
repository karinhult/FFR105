function f = EvaluationFunction(x)
    x1 = x(1);
    x2 = x(2);
    term1 = x1^2 + x2 - 11;
    term2 = x1 + x2^2 - 7;
    f = term1^2 + term2^2;
end