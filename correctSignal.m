function [ signal ] = correctSignal( signal, n)
% ������������ ������ � ����� n
 %phT = getPhT( getPhase(signal) ); % ��������� �������
 %phaseM = phT(1) + (n*2*pi)/phT(2); %��������� ���� � �����
 %signal(n) = sin(phaseM); % ������������� �������
 if n<2 , signal(n) = signal(n+1);
 else if n>=numel(signal) , signal(n) = signal(n-1);
     else signal(n) = (signal(n-1) + signal(n+1))/2; 
     end;
 end;
end

