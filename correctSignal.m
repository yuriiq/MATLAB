function [ signal ] = correctSignal( signal, n)
% Корректирует сигнал в точке n
 phT = getPhT( getPhase(signal) ); % параметры сигнала
 phaseM = phT(1) + (n*2*pi)/phT(2); %модельная фаза в точке
 signal(n) = sin(phaseM); % корректировка сигнала
end

