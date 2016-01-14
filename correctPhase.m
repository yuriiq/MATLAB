function [ phase ] = correctPhase( phase, n )
% Корректирует фазу в точке n
 size = numel(phase); % размер массива
 phT = getPhT( phase ); % параметры сигнала
 phaseM = linePhase( phT(1), phT(2), size ); % модельная фаза
 phase(n) = phaseM(n); % корректировка сигнала
 phase = normPhase(phase); % нормировка фазы на +-П
end

