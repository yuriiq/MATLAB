function [ dPhase ] = getdPhase( phaseA, phaseB )
% ��������� �������� ��� � �������� �� � �������� +-�
    dPhase = normPhase (minus(phaseA,phaseB));
end

