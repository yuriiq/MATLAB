function [ dPhase ] = dPhase( phaseA, phaseB )
% ��������� �������� ��� � �������� �� � �������� +-�
    dPhase = normPhase (minus(phaseA,phaseB));
end
