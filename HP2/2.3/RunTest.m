clear all

bestWHO = [0.530804121434595,0.828625476874375,-0.875761030177286,0.322682410760716,0.366807507090456,3.40214200853600;0.0758444651893708,-0.776272356557456,4.53363179980304,1.94758826469007,-1.67580806749601,-2.02207545666337];
bestWIH = [1.02637702703285,0.0475007734052899,-2.92538258025876,3.63582315681459;-1.98716047657140,-2.42120234938736,-0.923327891501270,-1.27279822490681;1.15156724809536,-2.46358270997260,4.54485380633906,2.10761629456695;0.720891062882191,0.336707526273680,0.694180350405739,1.20398798325506;-2.90764173388443,-2.47853706401881,-2.72737824306898,1.90755976468443];

nIn = 3;
nHidden = 5;    %Can be changed
nOut = 2;

slope = 3;
dataSet = 2;
wMax = max(max(bestWIH));
chromosome = EncodeNetwork(bestWIH, bestWHO, wMax);
[wIH, wHO] = DecodeChromosome(chromosome, nIn, nHidden, nOut, wMax);

g = 9.82;       %m/s^2
xMax = 1000;    %m
deltaT = 0.2;   %s
TMax = 750;     %K
M = 20000;      %kg
tau = 30;       %s
Ch = 40;        %K/s
Tamb = 283;     %K
Cb = 3000;      %N
vMax = 25;      %m/s
vMin = 1;       %m/s
alphaMax = 10;  %degrees
Feb = Cb*[7, 5, 4, 3, 2.5, 2, 1.6, 1.4, 1.2, 1];

%Starting values
v(1) = 20;      %m/s
x = 0;          %m
gear(1) = 7;
Tb(1) = 500;       %K
deltaTb = Tb - Tamb;
alpha(1) = GetSlopeAngle(x,slope,dataSet);
    
nHidden = size(wIH,1);
nOut = size(wHO,1);
hiddenNeurons = zeros(nHidden,1);
output = zeros(nOut,1);
vIndex = 1;

input=[v/vMax, alpha/alphaMax, Tb/TMax];
while x < xMax
    for i = 1:nHidden
        s = 0;
        
        for j = 1:(length(input))
            s = s + wIH(i,j)*input(j);
        end
        hiddenNeurons(i) = sigmoid(s);
    end
    for i = 1:nOut
        s = 0;
        for j = 1:nHidden
            s = s + wHO(i,j)*hiddenNeurons(j);
        end
        output(i) = sigmoid(s);
    end
    Pp(vIndex) = output(1);
    deltaGear = output(2);
    if mod(vIndex, 10) == 0     %Changes gear every two seconds
        gear(vIndex+1) = gear(vIndex) + fix(deltaGear);
    else
        gear(vIndex+1) = gear(vIndex);
    end
    
    
    if Pp(vIndex) < 0.01
        dDeltaTb = deltaTb/tau
    else
        dDeltaTb = Ch * Pp(vIndex);
    end
    deltaTb = deltaTb + dDeltaTb;
    Tb(vIndex + 1) = Tamb + deltaTb;

    distance(vIndex) = x;
    x = x + v(vIndex) * deltaT;
    alpha(vIndex + 1) = GetSlopeAngle(x,slope,dataSet);
    deltaV = deltaT * (g*sind(alpha(vIndex + 1)) - g*Pp(vIndex)/20 - Feb(gear(vIndex + 1))/M);
    
    v(vIndex + 1) = v(vIndex) + deltaV;
    
    vIndex= vIndex + 1;
    input=[v(vIndex)/vMax, alpha(vIndex)/alphaMax, Tb(vIndex)/TMax];
    if (max(input) > 1)
        break;
    elseif (v(vIndex) < vMin)
        break;
    elseif (alpha < 0) 
        break;
    end
end
Pp(vIndex) = output(1);
distance(vIndex) = x;


subplot(2,3,1)
plot(distance, alpha)
xlabel('x')
ylabel('\alpha')

subplot(2,3,2)
plot(distance, Pp)
xlabel('x')
ylabel('P_p')

subplot(2,3,3)
plot(distance, gear)
xlabel('x')
ylabel('gear')

subplot(2,3,4)
plot(distance, v)
xlabel('x')
ylabel('v')

subplot(2,3,5)
plot(distance, Tb)
xlabel('x')
ylabel('T_b')