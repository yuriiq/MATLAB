function [ phase ] = correctPhase( phase, n )
% ������������ ���� � ����� n
% 
 size = numel(phase);
 phT = getPhT( phase );
 phaseM = linePhase( phT(1), phT(2), size );
 phase(n) = phaseM(n);
 phase = normPhase(phase);
end

