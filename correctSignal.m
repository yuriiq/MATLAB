function [ signal ] = correctSignal( signal, n)
% Корректирует сигнал в точке n
 %phT = getPhT( getPhase(signal) ); % параметры сигнала
 %phaseM = phT(1) + (n*2*pi)/phT(2); %модельная фаза в точке
 %signal(n) = sin(phaseM); % корректировка сигнала
 if n<2 , signal(n) = signal(n+1);
 else if n>=numel(signal) , signal(n) = signal(n-1);
     else signal(n) = (signal(n-1) + signal(n+1))/2; 
     end;
 end;
end

