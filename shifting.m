function [ res ] = shifting(fileName)
% Вычисление смещения по разности фаз
    sizeSig = 125;
    sizeImg = 337;    
    img = imread(fileName);
    k =1:sizeSig;
    signalImg = img(1,k,1);
    signalA = double(signalImg) - mean(signalImg) ;
    phaseA = getPhase(signalA);
    res = zeros(sizeSig,sizeImg);
    parfor x = 2:sizeImg
        signalImg = img(x,k,1);
        signalB = double(signalImg) - mean(signalImg) ;
        phaseB = getPhase(signalB);
        dPhase = getdPhase( phaseA, phaseB );
        res(k,x) =  dPhase(k);
    end;
end


