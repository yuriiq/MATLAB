function [ phase ] = phase( signal )
% Вычисление мгновенной фазы сигнала с помощью преобразования Гильберта.
    if isa(signal,'sym')
        signal = dlmread(signal, '\t');
    end
    h = hilbert(signal);
    phase = atan2( imag(h), real(h));
end



