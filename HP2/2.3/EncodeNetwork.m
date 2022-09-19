function chromosome = EncodeNetwork(wIH, wHO, wMax)
nIn = size(wIH,2)-1;
nHidden = size(wIH,1); % must be equal to size(wHO,2)-1, for a valid set of matrices for an FFNN
nOut = size(wHO,1);

nFirstPart = nHidden * (nIn + 1);
nLastPart = nOut * (nHidden + 1);
chromosomeLength = nFirstPart + nLastPart;
chromosome = zeros(chromosomeLength,1);

for i = 1:nFirstPart
    chromosome(i) = wIH(i)/wMax;
end

for i = 1:nLastPart
    chromosome(i + nFirstPart) = wHO(i)/wMax;
end