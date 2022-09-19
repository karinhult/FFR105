function [wIH, wHO] = DecodeChromosome(chromosome, nIn, nHidden, nOut, wMax);
wIH = zeros(nHidden, nIn + 1);
wHO = zeros(nOut, nHidden + 1);

nFirstPart = nHidden * (nIn + 1);
nLastPart = nOut * (nHidden + 1);

for i = 1:nFirstPart
    wIH(i) = chromosome(i)*wMax;
end

for i = 1:nLastPart
    wHO(i)= chromosome(i + nFirstPart)*wMax;
end