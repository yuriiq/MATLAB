function [ phase ] = normPhase( phase )
% ���������� ���� �� �������� +-�
    while phase > pi
        phase = phase - pi*2;
    end
    while phase < -pi
        phase = phase + pi*2;
    end
end

