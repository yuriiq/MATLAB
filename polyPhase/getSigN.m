function [ sigN ] = getSigN(mu3, mu2, mu, ph0, size, sigma, sigmaA )
% ѕолучение косинусного сигнала с шумом.
    noise = normrnd(0, sigma, 1, size);
    sigN = zeros(1,size);
    for k=1:size
        x = k - size/2;
        sigN(k) = cos(x*x*x*mu3 + x*x*mu2 + mu*x+ph0+noise(k));
    end;
end
