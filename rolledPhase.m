function [ phase ] = rolledPhase( ph0, T, size )
% Получение свёрнутой фазы с заданными параметрами
    [phase] = normPhase( linePhase( ph0, T, size));
end

