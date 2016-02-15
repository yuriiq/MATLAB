function [ phase ] = getPhase( signal )
% Вычисление мгновенной фазы сигнала с помощью преобразования Гильберта.
    h = hilbert(signal);
    phase = atan2( imag(h), real(h));
end



