function   rewraPhi0( inDir, outDir, coeff )
% Разворачиваем фазу из массива файлов
X = 227;
for x=1:X
    filename = [inDir 'X_' int2str(x) '.txt'] ;
    phase = dlmread (filename); % phase = zero(Y,Z);
    sizePh = size(phase);
    parfor y=1:sizePh(1)
        ids = getPhaseShiftIds( phase(y,:), coeff );
        phase(y,:) = rewraping( phase(y,:), ids ) ;
    end
    filename = [outDir 'X_' int2str(x) '.txt'] ;
    dlmwrite(filename, phase);
    disp(X-x);
end

