function [ phase ] = getPhase( signal )
% ���������� ���������� ���� ������� � ������� �������������� ���������.
    h = hilbert(signal);
    phase = atan2( imag(h), real(h));
end



