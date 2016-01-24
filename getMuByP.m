function [ mu ] = getMuByP( signal, p )
% вычисляет частоту сигнала через его спектр
    image = abs(fft(signal));
    x = getMaxIndSpectr( image );
    mu = p(1)*x + p(2);
end

