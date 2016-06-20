function [A, B] = getAB(signal)
    S = ifft(signal);
    [~, X] = size(signal);
    for x=1:round(X/2)
        S(x) = 0;
    end
    s = fft(S);sumA = 0;
    for x=1:X
        im = imag(s(x));
        re = real(s(x));
        sumA = sumA+ sqrt(im*im +re*re);
    end
    A = 2 * sumA / X;
    phase = getPhase(signal); sumB = 0;
    for x=1:X
        sumB = sumB + signal(x)- A*phase(x);
    end
    B = sumB /X;
end