function [ phase ] = normPhase( phase )
% ���������� ���� �� �������� +-�
    X=numel(phase);
    for x=1:X
        while phase(x) > pi
            phase(x) = phase(x) - pi*2;
        end
        while phase(x) < -pi
            phase(x) = phase(x) + pi*2;
        end
    end
end

