function [ signal ] = getSig( phi, T, size )
% Получение косинусного сигнала из свёрнутой фазы
    signal = cos(rolledPhase(phi,T,size));
end

