function [ phase ] = phase( signal )
% ���������� ���������� ���� ������� � ������� �������������� ���������.
    if isa(signal,'sym')
        signal = dlmread(signal, '\t');
    end
    h = hilbert(signal);
    phase = atan2( imag(h), real(h));
end



