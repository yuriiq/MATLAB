function [ phase ] = getPhase( signal )
% ���������� ���������� ���� ������� � ������� �������������� ���������.
    if isa(signal,'sym')
        signal = 
    end
    h = hilbert(signal);
    phase = atan2( imag(h), real(h));
end



