function [ signal ] = getSig( phi, T, size )
% ��������� ����������� ������� �� �������� ����
    signal = cos(rolledPhase(phi,T,size));
end

