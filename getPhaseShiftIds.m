function [ indArr ] = getPhaseShiftIds( phase, coeff )
% ���������� ������ �����, � �������� �������� ����� ����
    y = 1;
    %dlmwrite('phase.txt',phase,'\n');
    dPhase = diff2(phase); % ������� ������ �����������
    %dlmwrite('dPhase.txt',dPhase,'\n');
    % dPhase = diff2(dPhase); % ������� ������ �����������
    %dlmwrite('dPhase2.txt',dPhase,'\n');
    MaxNum = max(dPhase) * coeff; % ����� ������������ �������
    size = numel(dPhase); % ������ �������
    indArr = zeros(1, size); % ������� �������� ����
    for x = 1:1:size % ��������� ������ �����, � ������� �������� �����
        if dPhase(x) > MaxNum
            indArr(y) = x;
            y = y+1;
        end
    end
    %dlmwrite('indArr.txt',indArr,'\n');    
end

