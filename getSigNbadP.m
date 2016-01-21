function [ sigN ] = getSigNbadP( ph0, T, size, sigma, n )
% ���������� ������ � ����� � ����������� ������ N
    % phase = getBadPhase( ph0, T, size, n);
    phase = linePhase( ph0, T, size) ; % ����
    noise = normrnd(0, sigma, 1, size); % ���
    sincs = getSincs( size, n); % �����
    phaseN =  phase+noise ; 
    sigN = cos(phaseN) + sincs;
    for x=1:1:size
        if (sigN(x) > 1), sigN(x) = 1; end;
        if (sigN(x) < -1), sigN(x) = -1; end;
    end
    % dlmwrite('lastSigNbadP.txt',sigN, '\t');
end

