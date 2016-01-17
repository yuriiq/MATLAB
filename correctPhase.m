function [ phase ] = correctPhase( phase, n, k )
% Корректирует фазу в точке n
 size = numel(phase); % размер массива
 phT = getPhT( phase ); % параметры сигнала
 phaseM = linePhase( phT(1), phT(2), size ); % модельная фаза
 maxX = n + k; if maxX > size, maxX = size; end; % нижняя граница корректировки
 minX = n - k; if minX < 1, minX = 1; end; % верхняя граница корректировки
 for x=minX:1:maxX
    phase(x) = phaseM(x); % корректировка сигнала     
 end
 phase = normPhase(phase); % нормировка фазы на +-П
end

