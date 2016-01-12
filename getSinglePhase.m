function [ meanPh ] = getSinglePhase( signal )
% Вычисляет фазу на основе разности фаз с эталоном
% 
 size = numel(signal);
 phase = getPhase( signal );
 phT = getPhT( phase );
 ph0 = 0; % начальная фаза
 phaseM = linePhase( ph0, phT(2), size );
 dPhase = normPhase(phaseM - phase);
 meanPh = mean(dPhase);
 plot(dPhase);
end

