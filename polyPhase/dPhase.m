function [ dPhase ] = dPhase( phaseA, phaseB )
% ��������� �������� ��� � �������� �� � �������� +-�
    dPhase = normPhase (minus(phaseA,phaseB));
    dPhase = phaseShiftIds( dPhase);
end
