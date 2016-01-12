function [ phaseT ] = getPhT( phaseM1 )
% ¬ычисление параметров косинусного сигнала
    ph0 = 0;  y = 0; eps = 10e-10; coeff = 0.4;
    p(1) = 1; p(2) = 1;
    T = getT( phaseM1, coeff );
    % disp(T);
    mu = (2*pi) / T;
    size = numel (phaseM1);
    while (((p(1)^2 > eps) || (p(2)^2 > eps)) && (y < 20))
        phaseM2 = linePhaseMu( ph0, mu, size);
        x = 1:1:size;
        dPhase = getdPhase( phaseM2, phaseM1);
        dPhase(1) = mean(dPhase);
        dPhase(size) = mean(dPhase);
        p = polyfit(x,dPhase,1);
        mu = mu - p(1);
        ph0 = ph0-p(2);
        y = y + 1; p(3) = y;
    end
    phaseT(1) = ph0;
    phaseT(2) = (2*pi)/mu ;
end

