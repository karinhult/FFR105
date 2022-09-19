clf
clear all
n = 1000;
x = linspace(-5,5,n);
y = linspace(-5,5,n);
a = 0.01;
for i = 1:n
    for j = 1:n
        f(i,j) = log(a + EvaluationFunction([x(j),y(i)]));
    end
end

contour(x,y,f)
xlabel('x')
ylabel('y')

%The rounded minima calculated with PSO
minima1 = [3,2];
minima2 = [3.5844,-1.8481];
minima3 = [-2.8051,3.1313];
minima4 = [-3.7793,-3.2832];
xMinimumCoord = [minima1(1),minima2(1),minima3(1),minima4(1)];
yMinimumCoord = [minima1(2),minima2(2),minima3(2),minima4(2)];
hold on
plot(xMinimumCoord,yMinimumCoord, 'rx')
hold off

%% Values of function at rounded minima
EvaluationFunction(minima1)
EvaluationFunction(minima2)
EvaluationFunction(minima3)
EvaluationFunction(minima4)
