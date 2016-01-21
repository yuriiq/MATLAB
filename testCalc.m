function [ ret ] = testCalc( ph0, T, size, sigma, k, dellP)
% ѕроверка вычислени€ параметров сигнала
    ph0M=zeros(0, k);
    TM = zeros(0, k);
    for x = 1:1:k
        signal = getSigN(ph0, T, size, sigma);
        for xx = 1:1:dellP
            phase = getPhase(signal);
            bedP = getBedP(phase) ;
            signal  = correctSignal(phase, bedP) ; 
        end 
        p = getPhT(getPhase(signal));
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

