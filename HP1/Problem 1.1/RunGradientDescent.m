% This function should run gradient descent until the L2 norm of the
% gradient falls below the specified threshold.

function x = RunGradientDescent(xStart, mu, eta, gradientTolerance) 
    T = gradientTolerance;
    x = xStart;
    
    gradient = ComputeGradient(xStart, mu);
    L2_norm = sqrt(sum(gradient.^2));

    while L2_norm >= T
        gradient = ComputeGradient(x, mu);
        x = x - eta.*gradient;
        
        L2_norm = sqrt(sum(gradient.^2));
    end
end
    
    
    

