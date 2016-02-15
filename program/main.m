function main( dirIn, outDir, mask, r)
% Насчитываем смещения по срезам
dPhase = calcDPhase( dirIn );
% mask = double(imread(mask));
if (r>0), dPhase = correctPoints2( dPhase, r ); end;
dPhase  = rewraping( dPhase );
% obj3D = getobj3D( dPhase, mask );
saveVideo(dPhase, outDir);
disp('Finish');
