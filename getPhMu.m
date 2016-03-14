function [ ph0, mu, dPhase ] = getPhMu( phaseM1, ph0, mu, eps, maxY)
% ¬ычисление параметров косинусного сигнала
    y = 0; p(1) = 1; p(2) = 1;
    size = numel (phaseM1);
    while (((abs(p(1)) > eps) || (abs(p(2)) > eps)) && (y < maxY))
        phaseM2 = getPhase(cos(normPhase(linePhaseMu(ph0, mu, size))));
%        phaseM2 = normPhase(linePhaseMu(ph0, mu, size));
        dPhase = getdPhase( phaseM2, phaseM1);
        x = 1:1:size;
        p = polyfit(x,dPhase,1);
        mu = mu -  p(1);
        ph0 = ph0- p(2);
        y = y + 1; %p(3) = y;
    end
    % plot(dPhase);
    % dlmwrite('dPhase.txt',phaseM2, '\n');
end

