function [ res2D]=  testRSignals( img, id, Mu, eps, maxY )
% Рассчитываем фазы для картинки 
 imgSize = size(img);
 sizeImg = imgSize(1);
 sizeSig = imgSize(2);
 k =1:sizeSig;
 res2D = zeros(1,sizeImg);
 parfor x = 1:sizeImg
    signalA = img(x,k);
    signal = signalA - mean(signalA) ;
    phase = getPhase(signal);
    mu = getMuByTable( signal, id , Mu );
    ph0 = getPhMu( phase, 0, mu, eps, maxY);
    res2D(x) = normPhase(ph0);
 end;
 % dlmwrite('dPhase.txt',res3D );
end

