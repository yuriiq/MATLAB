function [ sigN ] = getSigN(mu2, mu, ph0, size, sigma )
% ѕолучение косинусного сигнала с шумом.
    noise = normrnd(0, sigma, 1, size);
    sigN = zeros(1,size);
    for x=1:size
        sigN(x) = cos(x*x*mu2 + mu*x+ph0+noise(x));
    end;
end

