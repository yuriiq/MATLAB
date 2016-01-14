function [ signal ] = correctSignal( signal, n)
% ������������ ������ � ����� n
 phase = getPhase(signal); % ��������� ����
 size = numel(phase); % ������ �������
 phT = getPhT( phase ); % ��������� �������
 phaseM = linePhase( phT(1), phT(2), size ); %��������� ����
 signal(n) = sin(phaseM(n)); % ������������� �������
end

