function [ signal ] = correctSignal( signal, n)
%  орректирует сигнал в точке n
 phase = getPhase(signal); % вычисл€ем фазу
 size = numel(phase); % размер массива
 phT = getPhT( phase ); % параметры сигнала
 phaseM = linePhase( phT(1), phT(2), size ); %модельна€ фаза
 signal(n) = sin(phaseM(n)); % корректировка сигнала
end

