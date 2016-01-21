function [ bedP ] = getBedP( phase )
% ���������� ������ ����� � ���������� �����������.
% phase - ���� �������
 size = numel(phase); % ������ ������� 
 phT = getPhT( phase ); % ��������� ������� 
 phaseM = linePhase( phT(1), phT(2), size ); % ��������� ����
 dPhase = normPhase(phaseM - phase); % �������� ��� � ��������� +-�
 for x = 1:1:size
     dPhase(x) = dPhase(x)*dPhase(x); 
 end 
 % plot(dPhase); % ����������� ������� �������� �������� ��� 
 bedP = getMaxInd(dPhase); % ���������� ������ ������ �����
end

