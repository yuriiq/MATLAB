function [ retPhase ] = phaseShiftIds( phase)
% ��������� ������� ��� ����� �����������
    dPhase = diff2(phase); % ������� ������ �����������
    MaxNum = pi*pi; % ����� ������������ �������
    size = numel(dPhase)+1; % ������ �������
    retPhase = zeros(1, size); % ������� �������� ����
    k = 0;
    retPhase(1) = phase(1);
    for x = 2:size % ��������� ������ �����, � ������� �������� �����
        if dPhase(x-1) > MaxNum
            if phase(x) > phase(x-1)
                k = k - 2*pi;
            end
            if phase(x) < phase(x-1)
                k = k + 2*pi;
            end
        end
        retPhase(x) = phase(x) + k;
    end
end

