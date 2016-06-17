
function phase = getPhase( signal )
% Возвращает приведённую фазу
    S = ifft(signal);
    size = numel(signal);
    for x=1:round(size/2)
        S(x) = 0;
    end
    s = fft(S);
    phase = zeros(1,size);
    for x=1:size
        phase(x) = atan2( imag(s(x)), real(s(x)) );
    end
end





