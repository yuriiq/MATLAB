function [ p ] = getPolyPhMu( phaseM1, ph0, mu, pfN)
% ¬ычисление параметров косинусного сигнала
    y = 0; maxY = 10;  
    p = zeros(0,pfN+1);
    p(pfN) = mu; p(pfN+1) = ph0;
    size = numel (phaseM1);
    while  (y < maxY)
        phaseM2 = getPhase(cos(normPhase(polyPhaseMu( p, size))));
        dPhase = getdPhase( phaseM2, phaseM1);
        x = 1:1:size;
        pf = polyfit(x,dPhase, pfN);
        p = p - pf;
        y=y+1;
    end
end

