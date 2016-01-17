function [ ret ] = testCalc( ph0, T, size, sigma, n, k)
% ѕроверка вычислени€ параметров сигнала
    ph0M=zeros(0, size);
    TM = zeros(0, size);
    for x = 1:1:size*2
        phase = getPhase(getSigN(ph0, T, size, sigma));
        for xx = 1:1:n
            bedP = getBedP(phase) ;
            phase  = correctPhase( phase, bedP, k) ; 
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

