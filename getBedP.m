function [ bedP ] = getBedP( phase )
% Возвращает индекс точки с наибольшим отклонением.
% phase - фаза сигнала
 size = numel(phase); % размер сигнала 
 phT = getPhT( phase ); % параметры сигнала 
 phaseM = linePhase( phT(1), phT(2), size ); % модельная фаза
 dPhase = normPhase(phaseM - phase); % разность фаз в диапазоне +-П
 for x = 1:1:size
     dPhase(x) = dPhase(x)*dPhase(x); 
 end 
 % plot(dPhase); % отображение графика квадрата разности фаз 
 bedP = getMaxInd(dPhase); % вычисление номера плохой точки
end

