function [ res2D]=  testRSignals( img )
% Рассчитываем фазы для картинки 
 imgSize = size(img);
 sizeImg = imgSize(1);
 sizeSig = imgSize(2);
 start = 0.2;
 finish = 0.5;
 step = 0.0001;
 [ id , Mu] = gradTable( sizeSig, start, finish, step );

 k =1:sizeSig;
 res2D = zeros(1,sizeImg);
 parfor x = 1:sizeImg
    signalA = img(x,k);
    signal = signalA - mean(signalA) ;
    phase = getPhase(signal);
    mu = getMuByTable( signal, id , Mu );
    ph0 = getPhMu( phase, 0, mu, 10e-20);
    res2D(x) = normPhase(ph0);
 end;
 % dlmwrite('dPhase.txt',res3D );
end

