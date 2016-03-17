function [ phase ] = normPhase( phase )
% Нормировка фазы на диапазон +-П
    while phase > pi
        phase = phase - pi*2;
    end
    while phase < -pi
        phase = phase + pi*2;
    end
end

