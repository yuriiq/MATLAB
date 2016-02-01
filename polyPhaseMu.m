function [ phase ] = polyPhaseMu( p, size)
% Получение развёрнутой фазы с заданными параметрами 
    phase = zeros(0, size);
    pow = numel(p);
    for x = 1:1:size
        polyPhase = 0;
        for xx = 1:1:pow
            polyPhase = polyPhase + p(xx)*(x ^(pow - xx));
        end
        phase(x) = polyPhase ; 
    end
end

