function [  phTarr ] = testCalcBadP( ph0, T, size, sigma, n, k)
% Тестируем поиск и устранение плохой точки
%  
    signal = getSigNbadP( ph0, T, size, sigma, n );
    phase = getPhase(signal);
    corPhase = phase;
    bedPArr = zeros(n);
    phTarr = zeros(n + 1,2 );
    for x=1:1:n
        phT = getPhT( corPhase ); % параметры сигнала
        phTarr(x,1) = phT(1) ; phTarr(x,2) = phT(2) ;
        bedP = getBedP(corPhase) ;
        bedPArr(x) = bedP;
        corPhase  = correctPhase( corPhase, bedP, k) ; 
    end 
    phT = getPhT( corPhase ); % параметры сигнала
    phTarr(x+1,1) = phT(1) ; phTarr(x+1,2) = phT(2) ;
    phasePlot = zeros(size,2);
    for x=1:1:size 
        phasePlot(x,1) = phase(x);
        phasePlot(x,2) = corPhase(x);
    end    
    plot(phasePlot);
end

