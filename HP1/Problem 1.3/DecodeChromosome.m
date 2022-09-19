% Note: Each component of x should take values in [-a,a], where a = maximumVariableValue.

function x = DecodeChromosome(chromosome,numberOfVariables,maximumVariableValue);
    m = size(chromosome,2);
    n = numberOfVariables;
    k = m/n;
    d = maximumVariableValue;
    
    x = zeros(1,n);
    for i = 1:n
        x(i) = 0.0;
        for j = 1:k
            x(i) = x(i) + 2^(-j)*chromosome(j + (i-1)*k);
        end
        x(i) = -d + 2*d*x(i)/(1-2^(-k));
    end   
end
    
    

