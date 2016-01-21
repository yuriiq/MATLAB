function [ ret ] = testCalc( ph0, T, size, sigma, k, dellP, radius)
% ѕроверка вычислени€ параметров сигнала
    ph0M=zeros(0, k);
    TM = zeros(0, k);
    for x = 1:1:k
        phase = getPhase(getSigN(ph0, T, size, sigma));
        for xx = 1:1:dellP
            bedP = getBedP(phase) ;
            phase  = correctPhase( phase, bedP, radius) ; 
        end 
        p = getPhT(phase);
        if isnan(p(1)) || isnan(p(2))
            disp('isnan:'+x);
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

