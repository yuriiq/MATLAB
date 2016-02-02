function [ res2D]=  testRSignals( ~ )
% Рассчитываем фазы для картинки 
 sizeSig = 125;
 sizeImg = 337;
 start = 0.2;
 finish = 0.5;
 step = 0.0001;
 [ id , Mu] = gradTable( sizeSig, start, finish, step );
 img = imread('test.bmp');
 k =1:sizeSig;
 res2D = zeros(1,sizeImg);
 for x = 1:sizeImg
    signalA = img(x,k,1);
    signal = double(signalA) - mean(signalA) ;
    phase = getPhase(signal);
    mu = getMuByTable( signal, id , Mu );
    [ph0] = getPhMu( phase, 0, mu, 10e-20);
    res2D(x) = ph0;
 end;
 % dlmwrite('dPhase.txt',res3D );
end

