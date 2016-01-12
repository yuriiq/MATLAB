function [ ret ] = testCalc( ph0, T, size, sigma)
% ѕроверка вычислени€ параметров сигнала
    ph0M=zeros(0, size);
    TM = zeros(0, size);
    for x = 1:1:size*2
        p = getPhT(getPhase(getSigN(ph0, T, size, sigma)));
        if isnan(p(1)) || isnan(p(2))
        	ph0M(x)= 0;
            TM(x)  = 0;
        else
            ph0M(x)= p(1);
            TM(x)  = p(2);
        end
    end
    ret(1) = mean(ph0M);
    ret(2) = std(ph0M);
    ret(3) = mean(TM);
    ret(4) = std(TM);
end

