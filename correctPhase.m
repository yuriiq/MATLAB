function [ phase ] = correctPhase( phase, n, k )
% ������������ ���� � ����� n
 size = numel(phase); % ������ �������
 phT = getPhT( phase ); % ��������� �������
 phaseM = linePhase( phT(1), phT(2), size ); % ��������� ����
 maxX = n + k; if maxX > size, maxX = size; end; % ������ ������� �������������
 minX = n - k; if minX < 1, minX = 1; end; % ������� ������� �������������
 for x=minX:1:maxX
    phase(x) = phaseM(x); % ������������� �������     
 end
 phase = normPhase(phase); % ���������� ���� �� +-�
end

