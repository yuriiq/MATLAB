function [ phase ] = linePhase( ph0, T, size)
% ��������� ���� � �������� ��������� � ��������.
% ph0 - ��������� ����
% T - ������
% size - ������ �������
    phase = zeros(0, size);
    for x = 1:1:size
        phase(x) = ph0 + (x*2*pi)/T;
    end
end

