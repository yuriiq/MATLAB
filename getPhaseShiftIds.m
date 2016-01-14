function [ indArr ] = getPhaseShiftIds( phase, coeff )
% ���������� ������ �����, � �������� �������� ����� ����
    y = 1;
    dPhase = diff2(phase); % ������� ������ �����������
    dPhase = diff2(dPhase); % ������� ������ �����������
    MaxNum = max(dPhase) * coeff; % ����� ������������ �������
    size = numel(dPhase); % ������ �������
    indArr = zeros(0, size); % ������� �������� ����
    for x = 1:1:size % ��������� ������ �����, � ������� �������� �����
        if dPhase(x) > MaxNum
            indArr(y) = x;
            y = y+1;
        end
    end
end

