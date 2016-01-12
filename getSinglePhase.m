function [ meanPh ] = getSinglePhase( signal )
% ��������� ���� �� ������ �������� ��� � ��������
% 
 size = numel(signal);
 phase = getPhase( signal );
 phT = getPhT( phase );
 ph0 = 0; % ��������� ����
 phaseM = linePhase( ph0, phT(2), size );
 dPhase = normPhase(phaseM - phase);
 meanPh = mean(dPhase);
 plot(dPhase);
end

