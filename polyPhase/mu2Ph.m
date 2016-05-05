function [ mu2, mu, ph0, p, dPh] = mu2Ph( data, mu, ph0, N)
% ¬ычисление параметров косинусного сигнала
    X = numel(data);
    mu2 = 0;
    for n = 0:1:N
        ph = zeros(1,X);
        for x=1:X
            ph(x) = cos(x*x*mu2+x*mu + ph0); 
        end;
        x = 1:X;
        dPh = dPhase( data, phase(ph));
        p = polyfit(x,dPh,2);
        mu2 = mu2 + p(1);
        mu = mu + p(2);
        ph0 = ph0 + p(3);
        ph0 = normPhase( ph0 ) ;
    end
end
