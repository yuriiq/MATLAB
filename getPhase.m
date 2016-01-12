function [ phase ] = getPhase( signal )
% Вычисление мгновенной фазы сигнала с помощью преобразования Гильберта.
    if isa(signal,'sym')
        signal = 
    end
    h = hilbert(signal);
    phase = atan2( imag(h), real(h));
end



