function [ phi ] = calcV( dPhase, R )
% �������������������� ���� ��� ����� ��������
 size = numel(dPhase);
 xSum = 0;
 ySum = 0;
 X = cos(dPhase);
 Y = sin(dPhase);
 for i=1:size
    xSum = xSum + R(i)*X(i);
    ySum = ySum + R(i)*Y(i);
 end;
 phi = atan2(ySum,xSum);
end

