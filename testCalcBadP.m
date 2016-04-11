function [  ret ] = testCalcBadP( ph0, T, size, sigma, k, bedPN, n)
% Тестируем поиск и устранение плохой точки
    ph0M=zeros(1, k);
    TM = zeros(1, k);
    phTarr = zeros(1, n + 1 );
    for xx= 1:1:k
        signal = getSigNbadP( ph0, T, size, sigma, bedPN );
        phase = getPhase(signal);
        corPhase = phase;
        % bedPArr = zeros(bedPN);
        for x=1:1:n
            phT = getPhT( corPhase, T ); % параметры сигнала
             phTarr(x,1) = phT(1) ; phTarr(x,2) = phT(2) ;
            bedP = getBedP(corPhase) ;
            % bedPArr(x) = bedP;
            corPhase  = correctPhase( corPhase, bedP, 0) ; 
        end 
        phT = getPhT( corPhase, T ); % параметры сигнала
        % phTarr(x+1,1) = phT(1) ; phTarr(x+1,2) = phT(2) ;
        ph0M(xx) = phT(1);
        TM(xx) = phT(2);
    end
    ret(1) = mean(ph0M);
    ret(2) = std(ph0M);
    ret(3) = mean(TM);
    ret(4) = std(TM);
end

