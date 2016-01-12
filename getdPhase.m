function [ dPhase ] = getdPhase( phaseA, phaseB )
% Вычисляет разность фаз и приводит их в диапазон +-П
    dPhase = normPhase (minus(phaseA,phaseB));
end

