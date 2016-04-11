function [ Terr, Ts ] = testGetT( sizeSig, minT, maxT, step, N )
% Тестируем функцию getT( phase, coeff )
    finish = round((maxT - minT ) / step);
    Terr = zeros(2,finish);
    Ts = zeros(1,finish);
    for x=1:finish
         t = step*x + minT;
         tterr = zeros(1,N);
         parfor xx = 1:N
            t2 = 0; 
            while t2 < minT
                signal =  getSigN( 0, t, sizeSig, 0.15*pi );
                t2 = getT( getPhase(signal), 0.45 );
            end;
            tterr(xx) = t2-t; 
         end
         Ts(1,x) = t;
         Terr(1,x) = mean(tterr);
         Terr(2,x) = std(tterr);
    end
end

