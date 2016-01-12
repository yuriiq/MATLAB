function [ sig ] = correctSignal( signal, n)
% Корректирует сигнал в точке n
%  
 phase = getPhase(signal);
 size = numel(phase);
 phT = getPhT( phase );
 phaseM = linePhase( phT(1), phT(2), size );
 phase(n) = phaseM(n);
 sig = sin(phase);
end

