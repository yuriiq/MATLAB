function [ Terr, Ts ] = testGradTable( sizeSig, minT, maxT, step, N )
% Тестируем функцию gradTable( sizeSig, start, finish, step )
    minMu = 2*pi/maxT;
    maxMu = 2*pi/minT;
    step = minMu*step;
    p = gradTable( sizeSig, minMu, maxMu, step );
    finish = round((maxMu - minMu ) / step);
    Terr = zeros(2,finish);
    Ts = zeros(1,finish);
    for x=1:finish
         mu = step*x + minMu;
         tterr = zeros(0,N);
         parfor xx = 1:N
            signal =  getSigN( 0, 2*pi/mu, sizeSig, 0.15*pi );
            mu2 = getMuByP( signal, p );
            tterr(xx) = mu2-mu; 
         end
         Ts(1,x) = mu;
         Terr(1,x) = mean(tterr);
         Terr(2,x) = std(tterr);
    end
end

