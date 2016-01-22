function [ sigN ] = getSigN( ph0, T, size, sigma )
% ��������� ����������� ������� � �����.
    phase = linePhase( ph0, T, size);
    z = normrnd(0, sigma, 1, size);
    phaseN =  plus(phase, z) ;
    sigN = cos(phaseN);
    % dlmwrite('lastSigN.txt',sigN, '\t');
end

