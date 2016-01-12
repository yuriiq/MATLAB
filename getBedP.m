function [ bedP ] = getBedP( phase )
% Возвращает индекс точки с наибольшим отклонением.
% phase - фаза сигнала
 size = numel(phase);
 phT = getPhT( phase );
 phaseM = linePhase( phT(1), phT(2), size );
 dPhase = normPhase(phaseM - phase);
 for x = 1:1:size
     dPhase(x) = dPhase(x)*dPhase(x);
 end 
 plot(dPhase);
 bedP = getMaxInd(dPhase);
end

