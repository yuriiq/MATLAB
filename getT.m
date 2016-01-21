function [ T ] = getT( phase, coeff )
% ������ ������ ������� �� ���� ����� �����������.
    dIndArr = diff(getPhaseShiftIds( phase, coeff )); % ����������� ��������
    dIndArr = correctArray(dIndArr); % ������� ������� ��������� ��������
    T = meanNotOne(dIndArr);   
end

