function [ phase ] = rolledPhase( ph0, T, size )
% ��������� �������� ���� � ��������� �����������
    [phase] = normPhase( linePhase( ph0, T, size));
end

