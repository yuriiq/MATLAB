function [ T ] = getT( phase, coeff )
% ������ ������ ������� �� ���� ����� �����������.
    dIndArr = diff(getPhaseShiftIds( phase, coeff )); % ����������� ��������
    %dlmwrite('dIndArr.txt',dIndArr,'\n'); 
    % disp(dIndArr);
    dIndArr = correctArray(dIndArr); % ������� ������� ��������� ��������
    %dlmwrite('dIndArrCorr.txt',dIndArr,'\n'); 

    T = mean(dIndArr); 
end

