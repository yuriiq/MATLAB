function [ Terr, Ts ] = testGradTable( sizeSig, minT, maxT, step, N )
% Тестируем функцию gradTable( sizeSig, start, finish, step )
    minMu = 2*pi/maxT;
    maxMu = 2*pi/minT;
    step = minMu*(step/minT);
    [ id , Mu] = gradTable( sizeSig, minMu*0.9, maxMu*1.1, step*1.00250 );
    finish = round((maxMu - minMu ) / step);
    Terr = zeros(2,finish);
    Ts = zeros(1,finish);
    for x=1:finish
         mu = step*x + minMu;
         tterr = zeros(0,N);
         parfor xx = 1:N
            %signal =  getSigN( 0, 2*pi/mu, sizeSig, 0.15*pi );
            signal =  getSig( 0, 2*pi/mu, sizeSig );
            % mu2 = getMuByP( signal, p );
            mu2 = getMuByTable( signal, id , Mu );
            tterr(xx) = mu2-mu; 
         end
         Ts(1,x) = mu;
         Terr(1,x) = mean(tterr);
         Terr(2,x) = std(tterr);
    end
end

