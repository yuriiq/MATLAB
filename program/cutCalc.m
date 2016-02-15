function [dPhaseM] = cutCalc( img )
% –ассчитываем разности фазы между сери€ми по срезу 
 imgSize = size(img);
 sizeImg = imgSize(1);
 sizeSig = imgSize(2);
 k =1:sizeSig;
 dPhaseM = zeros(1,sizeImg);
 %shift = zeros(1,sizeImg);
 signal = img(1,k);
 signal = signal - mean(signal) ; 
 phaseA = getPhase(signal);
 for x = 2:sizeImg
    signal = img(x,k);
    signal = signal - mean(signal) ;
    phaseB = getPhase(signal);
    dPhase = phaseA - phaseB;
    dPhaseM(x) = calcV2(dPhase);
    phaseA = phaseB;
 end;
% for x = 2:sizeImg
%     shift(x) = shift(x-1) - dPhaseM(x);
% end;
end

