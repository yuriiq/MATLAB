function [ phi ] = calcV2( dPhase)
% �������������������� ���� ��� ����� ��������. ��� ����� �����������
 X = cos(dPhase);
 xSum = sum(X);
 Y = sin(dPhase);
 ySum = sum(Y);
 phi = atan2(ySum,xSum);
end

