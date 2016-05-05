function [ mu, ph0, p, dPh] = muPh( data, mu, ph0, N)
% ¬ычисление параметров косинусного сигнала
    X = numel(data);
    for n = 0:1:N
        ph = zeros(1,X);
        for x=1:X
            ph(x) = cos(x*mu + ph0); 
        end;
        x = 1:X;
        dPh = dPhase( data, phase(ph));
        p = polyfit(x,dPh,1);
        mu = mu + p(1);
        ph0 = ph0 + p(2);
        ph0 = normPhase( ph0 ) ;
    end
end

