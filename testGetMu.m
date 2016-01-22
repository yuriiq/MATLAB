function [ T ] = testGetMu( ~ )
% тестируем поиск частоты сигнала
    size = 150;
    start = 2*pi/50;
    finish = 2*pi/5;
    step = 0.001;
    p = gradTable( size, start, finish, step );
    T = 17.1501;
    ph0 = 0.1;
    sigma = 0.15*pi;
    signal = getSigN( ph0, T, size, sigma );
    mu = getMuByP( signal, p );
    T(1) = 2*pi/mu;
    T(2) = getT( getPhase( signal ), 0.4 );
end

