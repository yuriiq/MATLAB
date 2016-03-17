function   rewraPhi0( inDir, outDir )
% Сворачиваем фазу из массива файлов
Y = 253;
X = 227;
Z = 391; 
k = -1.3391+ 2,543210943391;
phase = zeros(Y,X,Z);
parfor z = 1:Z
    filename = [inDir 'vdata' int2str(z) '.txt'] ;
    Rphase = dlmread (filename); 
    for y = 1:Y
            x = 114; 
            Rphase(y,x) = normPhase(Rphase(y,x)+ k) ;
    end
    phase(:,:,z) = Rphase(:,:); 
    fprintf('%d; ',Z-z);
end

    
x = 114; 
    filename = [outDir 'X_' int2str(x) '.txt'] ;
    phaseX = zeros(Y,Z);
    phaseX(:,:) = phase(:,x,:);
    dlmwrite(filename, phaseX );
end

