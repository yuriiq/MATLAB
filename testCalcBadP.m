function [ bedP ] = testCalcBadP( ph0, T, size, n)
% ��������� ����� � ���������� ������ �����
%  
    signal = cos(getBadPhase( ph0, T, size, n));
    phase = getPhase(signal);
    bedP = getBedP(phase) ;
    phaseCor = correctPhase( phase, bedP) ; 
    plot(phaseCor);
    
end

