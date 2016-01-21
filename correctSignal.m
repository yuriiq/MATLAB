function [ signal ] = correctSignal( signal, n)
% ������������ ������ � ����� n
 phT = getPhT( getPhase(signal) ); % ��������� �������
 phaseM = phT(1) + (n*2*pi)/phT(2); %��������� ���� � �����
 signal(n) = sin(phaseM); % ������������� �������
end

