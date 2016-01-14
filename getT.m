function [ T ] = getT( phase, coeff )
% ������ ������ ������� �� ���� ����� �����������.
    dIndArr = diff(getPhaseShiftIds( phase, coeff )); % ����������� ��������
    dIndArr = correctArray(dIndArr); % ������� ������� ��������� ��������
    size = max(dIndArr); % ������ �������
    x = 1:1:size;
    h = histc(dIndArr,x);
    T = meanNotOne(dIndArr);   
    plot(h);
end

