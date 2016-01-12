function [ phase ] = normPhase( phaseIn )
% Нормировка фазы на диапазон +-П
    size = numel(phaseIn);
    phase = phaseIn;
    for x = 1:1:size
        while phase(x) > pi
            phase(x) = phase(x) - pi*2;
        end
        while phase(x) < -pi
            phase(x) = phase(x) + pi*2;
        end
    end
end

